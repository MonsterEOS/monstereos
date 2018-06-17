port module Main exposing (..)

import Date.Distance as Distance
import Date
import Html exposing (..)
import Html.Attributes exposing (attribute, class, defaultValue, href, placeholder, target, type_, value, datetime, alt, src, max, style)
import Html.Events exposing (onClick, onInput)
import Http
import Json.Decode as JD
import Time
import Json.Decode.Pipeline as JDP
import Date.Extra.Format as DateFormat
import Date.Extra.Config.Config_en_us as DateConfig


-- import Json.Encode as JE
-- import FormatNumber
-- import FormatNumber.Locales exposing (usLocale)


init : Flags -> ( Model, Cmd Msg )
init flags =
    let
        model =
            initModel flags

        cmd =
            if not (String.isEmpty model.user.eosAccount) then
                ( { model | isLoading = True }
                , Cmd.none
                  -- Cmd.batch [ listExchanges model ]
                  --, getWatchList model ]
                )
            else
                ( model, Cmd.none )
    in
        cmd


initialModel : Model
initialModel =
    { isLoading = False
    , isMuted = False
    , scatterInstalled = False
    , scatterInstallPressed = False
    , showHelp = False
    , showMonsterCreation = False
    , user = User "" ""
    , error = Nothing
    , content = Home
    , socketsConnected = False
    , currentTime = 0
    , monsters = []
    , newMonsterName = ""
    , notifications = []
    , wallet = Wallet 0
    , depositAmount = 3
    , showWallet = False
    }


initModel : Flags -> Model
initModel flags =
    let
        content =
            if not (String.isEmpty flags.user.eosAccount) then
                MyMonsters
            else
                Home
    in
        { initialModel | user = flags.user, content = content }


main : Program Flags Model Msg
main =
    Html.programWithFlags
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }



-- Model


type NotificationType
    = Success String
    | Warning String
    | Error String


type MonsterRequest
    = Feed
    | Awake
    | Sleep
    | Play
    | Wash


type Content
    = Home
    | MyMonsters
    | Rank
    | About


type alias Flags =
    { user : User
    }


type alias User =
    { eosAccount : String
    , publicKey : String
    }


type alias Monster =
    { id : Int
    , owner : String
    , name : String
    , mtype : Int
    , created_at : Time.Time
    , death_at : Time.Time
    , health : Int
    , hunger : Int
    , last_fed_at : Time.Time
    , awake : Int
    , is_sleeping : Bool
    , last_bed_at : Time.Time
    , last_awake_at : Time.Time
    , happiness : Int
    , last_play_at : Time.Time
    , clean : Int
    , last_shower_at : Time.Time
    }


type alias Wallet =
    { funds : Float }


type alias Notification =
    { notification : NotificationType
    , time : Time.Time
    , id : String
    }


type alias Model =
    { isLoading : Bool
    , isMuted : Bool
    , showHelp : Bool
    , showMonsterCreation : Bool
    , scatterInstalled : Bool
    , scatterInstallPressed : Bool
    , user : User
    , error : Maybe String
    , content : Content
    , socketsConnected : Bool
    , currentTime : Time.Time
    , monsters : List Monster
    , newMonsterName : String
    , notifications : List Notification
    , wallet : Wallet
    , showWallet : Bool
    , depositAmount : Float
    }



-- Helper Constants


monsterMinFeedInterval : Float
monsterMinFeedInterval =
    -- TODO: move it to chain and make it dynamic so frontends are all aligned?
    3 * Time.hour


monsterMinAwakeInterval : Float
monsterMinAwakeInterval =
    -- TODO: move it to chain and make it dynamic so frontends are all aligned?
    8 * Time.hour


monsterMinSleepPeriod : Float
monsterMinSleepPeriod =
    -- TODO: move it to chain and make it dynamic so frontends are all aligned?
    4 * Time.hour


scatterExtensionLink : String
scatterExtensionLink =
    "https://chrome.google.com/webstore/detail/scatter/ammjpmhgckkpcamddpolhchgomcojkle"


jungleTestNetLink : String
jungleTestNetLink =
    "http://dev.cryptolions.io"



-- Ports


port signOut : () -> Cmd msg


port setTitle : String -> Cmd msg


port listMonsters : () -> Cmd msg


port getWallet : () -> Cmd msg


port setMonsters : (JD.Value -> msg) -> Sub msg


port setMonstersFailed : (String -> msg) -> Sub msg


port setWallet : (JD.Value -> msg) -> Sub msg


port setWalletFailed : (String -> msg) -> Sub msg


port submitNewMonster : String -> Cmd msg


port monsterCreationSucceed : (String -> msg) -> Sub msg


port monsterCreationFailed : (String -> msg) -> Sub msg


port requestFeed : Int -> Cmd msg


port requestPlay : Int -> Cmd msg


port requestWash : Int -> Cmd msg


port requestBed : Int -> Cmd msg


port requestAwake : Int -> Cmd msg


port feedSucceed : (String -> msg) -> Sub msg


port feedFailed : (String -> msg) -> Sub msg


port depositSucceed : (String -> msg) -> Sub msg


port depositFailed : (String -> msg) -> Sub msg


port requestDeposit : Float -> Cmd msg


port bedSucceed : (String -> msg) -> Sub msg


port bedFailed : (String -> msg) -> Sub msg


port awakeSucceed : (String -> msg) -> Sub msg


port awakeFailed : (String -> msg) -> Sub msg


port setScatterInstalled : (Bool -> msg) -> Sub msg


port scatterRequestIdentity : () -> Cmd msg


port scatterRejected : (String -> msg) -> Sub msg


port setScatterIdentity : (JD.Value -> msg) -> Sub msg


port refreshPage : () -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Time.every Time.second Tick
        , Time.every Time.minute RefreshData
        , setScatterIdentity ScatterSignIn
        , setScatterInstalled ScatterLoaded
        , scatterRejected ScatterRejection
        , setMonsters SetMonsters
        , setMonstersFailed SetMonstersFailure
        , setWallet SetWallet
        , setWalletFailed SetWalletFailure
        , depositSucceed DepositSucceed
        , depositFailed DepositFailed
        , feedFailed MonsterFeedFailed
        , feedSucceed MonsterFeedSucceed
        , awakeFailed MonsterAwakeFailed
        , awakeSucceed MonsterAwakeSucceed
        , bedFailed MonsterBedFailed
        , bedSucceed MonsterBedSucceed
        , monsterCreationSucceed MonsterCreationSucceed
        , monsterCreationFailed MonsterCreationFailed
        ]



-- update


type Msg
    = Tick Time.Time
    | SetContent Content
    | ScatterLoaded Bool
    | ScatterSignIn JD.Value
    | RefreshPage
    | RefreshData Time.Time
    | ScatterRequestIdentity
    | ScatterInstallPressed
    | ScatterRejection String
    | SetWallet JD.Value
    | SetWalletFailure String
    | DepositSucceed String
    | DepositFailed String
    | RequestDeposit Float
    | SetMonsters JD.Value
    | SetMonstersFailure String
    | MonsterFeedSucceed String
    | MonsterFeedFailed String
    | MonsterAwakeSucceed String
    | MonsterAwakeFailed String
    | MonsterBedSucceed String
    | MonsterBedFailed String
    | MonsterCreationSucceed String
    | MonsterCreationFailed String
    | RequestMonsterFeed Int
    | RequestMonsterPlay Int
    | RequestMonsterBed Int
    | RequestMonsterAwake Int
    | RequestMonsterWash Int
    | UpdateNewMonsterName String
    | SubmitNewMonster
    | UpdateDepositAmount String
    | SubmitDeposit
    | ToggleHelp
    | ToggleWallet
    | ToggleMonsterCreation
    | DeleteNotification String
    | Logout


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ScatterLoaded isLoaded ->
            ( { model | scatterInstalled = isLoaded }, Cmd.none )

        ScatterInstallPressed ->
            ( { model | scatterInstallPressed = True }, Cmd.none )

        ScatterRequestIdentity ->
            ( { model | isLoading = True }, scatterRequestIdentity () )

        ScatterRejection txt ->
            ( { model
                | isLoading = False
                , notifications = [ Notification (Error ("Scatter Rejection: " ++ txt)) model.currentTime (toString model.currentTime) ] ++ model.notifications
              }
            , Cmd.none
            )

        RefreshData _ ->
            ( model, Cmd.batch [ listMonsters (), getWallet () ] )

        RequestMonsterFeed petId ->
            let
                newModel =
                    handleMonsterRequest model Feed petId
            in
                ( { newModel | isLoading = True }, requestFeed (petId) )

        MonsterFeedSucceed trxId ->
            handleMonsterAction model trxId "Feed" True

        MonsterFeedFailed err ->
            handleMonsterAction model err "Feed" False

        DepositSucceed trxId ->
            handleActionResponse
                { model | showWallet = False }
                trxId
                "Deposit"
                True

        DepositFailed err ->
            handleActionResponse model err "Deposit" False

        RequestDeposit amount ->
            ( { model | isLoading = True }, requestDeposit (amount) )

        RequestMonsterPlay petId ->
            ( { model | isLoading = True }, requestPlay (petId) )

        RequestMonsterWash petId ->
            ( { model | isLoading = True }, requestWash (petId) )

        RequestMonsterBed petId ->
            let
                newModel =
                    handleMonsterRequest model Sleep petId
            in
                ( { newModel | isLoading = True }, requestBed (petId) )

        MonsterBedSucceed trxId ->
            handleMonsterAction model trxId "Bed" True

        MonsterBedFailed err ->
            handleMonsterAction model err "Bed" False

        RequestMonsterAwake petId ->
            let
                newModel =
                    handleMonsterRequest model Awake petId
            in
                ( { newModel | isLoading = True }, requestAwake (petId) )

        MonsterAwakeSucceed trxId ->
            handleMonsterAction model trxId "Awake" True

        MonsterAwakeFailed err ->
            handleMonsterAction model err "Awake" False

        MonsterCreationSucceed trxId ->
            ( { model
                | isLoading = False
                , showMonsterCreation = False
                , newMonsterName = ""
                , notifications = [ Notification (Success ("Monster  " ++ model.newMonsterName ++ " Created! TrxId: " ++ trxId)) model.currentTime (toString model.currentTime) ] ++ model.notifications
              }
            , Cmd.batch [ listMonsters (), getWallet () ]
            )

        MonsterCreationFailed err ->
            handleMonsterAction model err "Create" False

        ScatterSignIn userJson ->
            case (JD.decodeValue userDecoder userJson) of
                Ok user ->
                    ( { model
                        | user = user
                        , content = MyMonsters
                        , notifications = [ Notification (Success ("Welcome " ++ user.eosAccount)) model.currentTime "signInSuccess" ] ++ model.notifications
                      }
                    , Cmd.batch [ listMonsters (), getWallet () ]
                    )

                Err err ->
                    ( { model
                        | notifications = [ Notification (Error ("Fail to SignIn: " ++ err)) model.currentTime "signInFailed" ] ++ model.notifications
                        , isLoading = False
                      }
                    , Cmd.none
                    )

        SetWallet rawWallet ->
            case (JD.decodeValue walletDecoder rawWallet) of
                Ok wallet ->
                    ( { model | wallet = wallet, isLoading = False }
                    , Cmd.none
                    )

                Err err ->
                    ( { model
                        | notifications = [ Notification (Error ("Fail to Parse Wallet Funds: " ++ err)) model.currentTime "parseWalletFailed" ] ++ model.notifications
                        , isLoading = False
                      }
                    , Cmd.none
                    )

        SetWalletFailure err ->
            ( { model
                | isLoading = False
                , notifications = [ Notification (Error ("Fail to load Wallet: " ++ err)) model.currentTime (toString model.currentTime) ] ++ model.notifications
              }
            , Cmd.none
            )

        SetMonsters monsterList ->
            case (JD.decodeValue monstersDecoder monsterList) of
                Ok monsters ->
                    ( { model | monsters = monsters, isLoading = False }, Cmd.none )

                Err err ->
                    ( { model | error = Just err, isLoading = False }, Cmd.none )

        SetMonstersFailure err ->
            ( { model
                | isLoading = False
                , notifications = [ Notification (Error ("Fail to load Monsters List: " ++ err)) model.currentTime (toString model.currentTime) ] ++ model.notifications
              }
            , Cmd.none
            )

        RefreshPage ->
            ( model, refreshPage () )

        Tick time ->
            let
                -- erase after 10 secs
                notifications =
                    model.notifications
                        |> List.filter
                            (\notification ->
                                (model.currentTime - notification.time) < 10000
                            )
            in
                ( { model | currentTime = time, notifications = notifications }, Cmd.none )

        DeleteNotification id ->
            let
                notifications =
                    model.notifications
                        |> List.filter (\notification -> notification.id /= id)
            in
                ( { model | notifications = notifications }, Cmd.none )

        SetContent content ->
            ( { model | content = content }, Cmd.none )

        UpdateNewMonsterName name ->
            ( { model | newMonsterName = name }, Cmd.none )

        SubmitNewMonster ->
            ( { model | isLoading = True }, submitNewMonster (model.newMonsterName) )

        UpdateDepositAmount txtAmount ->
            ( { model
                | depositAmount =
                    (Result.withDefault model.depositAmount
                        (String.toFloat txtAmount)
                    )
              }
            , Cmd.none
            )

        SubmitDeposit ->
            ( { model | isLoading = True }, requestDeposit (model.depositAmount) )

        ToggleHelp ->
            ( { model | showHelp = (not model.showHelp) }, Cmd.none )

        ToggleWallet ->
            ( { model | showWallet = (not model.showWallet), depositAmount = 3 }
            , Cmd.none
            )

        ToggleMonsterCreation ->
            ( { model
                | newMonsterName = ""
                , showMonsterCreation = (not model.showMonsterCreation)
              }
            , Cmd.none
            )

        Logout ->
            ( initialModel, signOut () )


handleMonsterRequest : Model -> MonsterRequest -> Int -> Model
handleMonsterRequest model requestType petId =
    let
        monster =
            model.monsters |> List.filter (\m -> m.id == petId) |> List.head

        currentTime =
            model.currentTime

        warnNotification msg req =
            Notification (Warning msg) currentTime req

        newNotification =
            case monster of
                Just monster ->
                    if requestType == Feed && (currentTime - monster.last_fed_at) < monsterMinFeedInterval then
                        Just (warnNotification "I'm Not hungry..." "notHungryWarning")
                    else if requestType == Sleep && (currentTime - monster.last_awake_at) < monsterMinAwakeInterval then
                        Just (warnNotification "I don't want to Sleep!!!" "notSleepyWarning")
                    else if requestType == Awake && (currentTime - monster.last_bed_at) < monsterMinSleepPeriod then
                        Just (warnNotification "Zzzzz... leave me alone!" "notAwaking")
                    else
                        Nothing

                Nothing ->
                    Nothing

        newModel =
            case newNotification of
                Just notification ->
                    { model | notifications = [ notification ] ++ model.notifications }

                Nothing ->
                    model
    in
        newModel


handleMonsterAction : Model -> String -> String -> Bool -> ( Model, Cmd Msg )
handleMonsterAction model msg action isSuccess =
    let
        time =
            model.currentTime

        timeTxt =
            toString time

        ( notification, cmd ) =
            if isSuccess then
                ( Notification (Success ("Monster attempt to " ++ action ++ " ! TrxId: " ++ msg)) time timeTxt, listMonsters () )
            else
                ( Notification (Error ("Fail to " ++ action ++ " Monster: " ++ msg)) time timeTxt, Cmd.none )
    in
        ( { model
            | isLoading = False
            , notifications = [ notification ] ++ model.notifications
          }
        , cmd
        )


handleActionResponse : Model -> String -> String -> Bool -> ( Model, Cmd Msg )
handleActionResponse model msg action isSuccess =
    let
        time =
            model.currentTime

        timeTxt =
            toString time

        ( notification, cmd ) =
            if isSuccess then
                ( Notification (Success ("Action attempt to " ++ action ++ " ! TrxId: " ++ msg)) time timeTxt
                , Cmd.batch [ listMonsters (), getWallet () ]
                )
            else
                ( Notification (Error ("Fail to execute " ++ action ++ " action: " ++ msg)) time timeTxt, Cmd.none )
    in
        ( { model
            | isLoading = False
            , notifications = [ notification ] ++ model.notifications
          }
        , cmd
        )


handleResponseErrors : Model -> Http.Error -> String -> ( Model, Cmd Msg )
handleResponseErrors model err msg =
    let
        _ =
            Debug.log msg err

        error =
            case err of
                Http.BadStatus res ->
                    (toString res.status.code) ++ " - " ++ (toString res.body)

                Http.BadPayload msg _ ->
                    msg

                _ ->
                    "Http/Network Fail"
    in
        ( { model | error = Just error, isLoading = False }, Cmd.none )


userDecoder : JD.Decoder User
userDecoder =
    JD.map2
        User
        (JD.field "eosAccount" JD.string)
        (JD.field "publicKey" JD.string)


walletDecoder : JD.Decoder Wallet
walletDecoder =
    JDP.decode Wallet
        |> JDP.required "funds" JD.float


monstersDecoder : JD.Decoder (List Monster)
monstersDecoder =
    JD.list
        (JDP.decode Monster
            |> JDP.required "id" JD.int
            |> JDP.required "owner" JD.string
            |> JDP.required "name" JD.string
            |> JDP.required "type" JD.int
            |> JDP.required "created_at" JD.float
            |> JDP.required "death_at" JD.float
            |> JDP.required "health" JD.int
            |> JDP.required "hunger" JD.int
            |> JDP.required "last_fed_at" JD.float
            |> JDP.required "awake" JD.int
            |> JDP.required "is_sleeping" JD.bool
            |> JDP.required "last_bed_at" JD.float
            |> JDP.required "last_awake_at" JD.float
            |> JDP.required "happiness" JD.int
            |> JDP.required "last_play_at" JD.float
            |> JDP.required "clean" JD.int
            |> JDP.required "last_shower_at" JD.float
        )


calcTimeDiff : Time.Time -> Time.Time -> String
calcTimeDiff timeOld timeNew =
    let
        defaultConfig =
            Distance.defaultConfig

        config =
            { defaultConfig | includeSeconds = True }

        inWords =
            config
                |> Distance.inWordsWithConfig
    in
        inWords (Date.fromTime timeOld) (Date.fromTime timeNew)


formatTime : Time.Time -> String
formatTime time =
    if time > 0 then
        time
            |> Date.fromTime
            |> DateFormat.format DateConfig.config
                "%B, %e %Y @ %H:%M:%S %P"
    else
        ""


reversedComparison : comparable -> comparable -> Order
reversedComparison a b =
    case compare a b of
        LT ->
            GT

        EQ ->
            EQ

        GT ->
            LT



-- reusable components


icon : String -> Bool -> Bool -> Html Msg
icon icon spin isLeft =
    let
        spinner =
            if spin then
                " fa-spin"
            else
                ""

        className =
            "fa" ++ spinner ++ " fa-" ++ icon

        classIcon =
            if isLeft then
                "icon is-left"
            else
                "icon"
    in
        span [ class classIcon ]
            [ i [ class className ]
                []
            ]


loadingIcon : Model -> Html Msg
loadingIcon model =
    if model.isLoading then
        icon "spinner" True False
    else
        text ""


disabledAttribute : Bool -> Attribute msg
disabledAttribute isDisabled =
    if isDisabled then
        attribute "disabled" "true"
    else
        attribute "data-empty" ""


fieldInput : Model -> String -> String -> String -> String -> (String -> Msg) -> Html Msg
fieldInput model fieldLabel fieldValue fieldPlaceHolder fieldIcon fieldMsg =
    let
        loadingClass =
            if model.isLoading then
                " is-loading"
            else
                ""
    in
        div [ class "field" ]
            [ label [ class "label is-large" ]
                [ text fieldLabel ]
            , div
                [ class
                    ("control has-icons-left has-icons-right"
                        ++ loadingClass
                    )
                ]
                [ input
                    [ class "input is-large"
                    , placeholder fieldPlaceHolder
                    , type_ "text"
                    , defaultValue fieldValue
                    , onInput fieldMsg
                    ]
                    []
                , icon fieldIcon False True
                ]
            ]


selectInput : Model -> List ( String, String ) -> String -> String -> String -> (String -> Msg) -> Html Msg
selectInput model optionsType fieldLabel fieldValue fieldIcon fieldMsg =
    let
        options =
            optionsType
                |> List.map
                    (\( optVal, optText ) ->
                        option [ value optVal ] [ text optText ]
                    )

        loadingClass =
            if model.isLoading then
                " is-loading"
            else
                ""
    in
        div [ class "field" ]
            [ label [ class "label is-large" ]
                [ text fieldLabel ]
            , div [ class ("control has-icons-left" ++ loadingClass) ]
                [ div [ class "select is-large is-fullwidth" ]
                    [ select [ onInput fieldMsg, disabledAttribute model.isLoading ] options ]
                , icon fieldIcon False True
                ]
            ]


modalCard : Model -> String -> Msg -> List (Html Msg) -> Maybe ( String, Msg ) -> Maybe ( String, Msg ) -> Html Msg
modalCard model title close body ok cancel =
    let
        loadingClass =
            if model.isLoading then
                " is-loading"
            else
                ""

        okButton =
            case ok of
                Just ( txt, msg ) ->
                    button
                        [ class ("button is-success" ++ loadingClass)
                        , onClick msg
                        , disabledAttribute model.isLoading
                        ]
                        [ text txt ]

                Nothing ->
                    text ""

        cancelButton =
            case cancel of
                Just ( txt, msg ) ->
                    button
                        [ class ("button is-light" ++ loadingClass)
                        , onClick msg
                        , disabledAttribute model.isLoading
                        ]
                        [ text txt ]

                Nothing ->
                    text ""
    in
        div [ class "modal is-active" ]
            [ div [ class "modal-background" ] []
            , div [ class "modal-card" ]
                [ header [ class "modal-card-head" ]
                    [ p [ class "modal-card-title" ]
                        [ loadingIcon model, text title ]
                    , button
                        [ class "delete"
                        , attribute "aria-label" "close"
                        , onClick close
                        ]
                        []
                    ]
                , section [ class "modal-card-body" ]
                    body
                , footer [ class "modal-card-foot" ]
                    [ okButton
                    , cancelButton
                    ]
                ]
            ]



-- view


notification : Notification -> Html Msg
notification notification =
    let
        ( txt, messageClass ) =
            case notification.notification of
                Success txt ->
                    ( txt, "is-success" )

                Warning txt ->
                    ( txt, "is-warning" )

                Error txt ->
                    ( txt, "is-danger" )
    in
        div [ class ("notification on " ++ messageClass) ]
            [ button
                [ class "delete"
                , onClick (DeleteNotification notification.id)
                ]
                []
            , text txt
            ]


notificationsView : Model -> Html Msg
notificationsView model =
    div [ class "toast" ] (model.notifications |> List.map notification)


monsterCreationModal : Model -> Html Msg
monsterCreationModal model =
    let
        modalClass =
            if model.showHelp then
                "modal is-active"
            else
                "modal"

        scatterInstalled =
            model.scatterInstalled
    in
        modalCard model
            "Create a New Monster"
            ToggleMonsterCreation
            [ form []
                [ fieldInput
                    model
                    "New Monster Name"
                    model.newMonsterName
                    "Pikachu"
                    "paw"
                    UpdateNewMonsterName
                ]
            ]
            (Just ( "Submit", SubmitNewMonster ))
            (Just ( "Cancel", ToggleMonsterCreation ))


walletModal : Model -> Html Msg
walletModal model =
    let
        modalClass =
            if model.showHelp then
                "modal is-active"
            else
                "modal"

        scatterInstalled =
            model.scatterInstalled
    in
        modalCard model
            "Deposit EOS in Wallet"
            ToggleWallet
            [ form []
                [ p [] [ text ("You have " ++ (toString model.wallet.funds) ++ " EOS available. Each monster has a creation fee of 1 EOS.") ]
                , fieldInput
                    model
                    "Deposit EOS Amount"
                    (toString model.depositAmount)
                    "5"
                    "suitcase"
                    UpdateDepositAmount
                ]
            ]
            (Just ( "Add Funds", SubmitDeposit ))
            (Just ( "Cancel", ToggleWallet ))


helpModal : Model -> Html Msg
helpModal model =
    let
        modalClass =
            if model.showHelp then
                "modal is-active"
            else
                "modal"

        scatterInstalled =
            model.scatterInstalled
    in
        modalCard model
            "Help"
            ToggleHelp
            [ div [ class "content" ]
                [ p [] [ text "It's a fun game where you create your pet and you must take care of him so he does not die." ]
                , p []
                    [ text "You will need to have Scatter installed and create an account on EOS JungleTestNet, so if you don't have any JungleNet identity, after the Scatter installation please follow the below instructions:"
                    , ol []
                        [ li [] [ text "Open your Scatter, click in Private Keys and generate a KeyPair, save it as 'MonsterEosTest' or anything you want" ]
                        , li [] [ text "After saving your private key in safe place, please copy your public key, you will need it for registration on JungleNet in the next step" ]
                        , li [] [ a [ href jungleTestNetLink, target "_blank" ] [ text "Click here to open JungleNet and click in Create an account there" ] ]
                        , li [] [ text "Now open your Scatter again, click on Identities, import your key pair and type the account name of the account you created on Junglenet and save" ]
                        , li [] [ text "That's it! You are all set, close this help window and click in Enter with Scatter to start playing! Have fun!" ]
                        ]
                    ]
                ]
            ]
            Nothing
            Nothing


topMenu : Model -> Html Msg
topMenu model =
    let
        loggedOut =
            String.isEmpty model.user.eosAccount

        aboutActiveClass =
            if model.content == About then
                " is-active"
            else
                ""

        helpButton =
            a
                [ class "navbar-item help-button"
                , onClick ToggleHelp
                ]
                [ span [ class "navbar-item icon is-small" ]
                    [ i [ class "fa fa-2x fa-question-circle has-text-info" ] [] ]
                ]

        aboutButton =
            a
                [ class ("navbar-item" ++ aboutActiveClass)
                , onClick (SetContent About)
                , href "javascript:;"
                ]
                [ text "About"
                ]

        content =
            if loggedOut then
                let
                    scatterButton =
                        if model.scatterInstallPressed then
                            a [ class "navbar-item", onClick RefreshPage ]
                                [ text "Refresh page after Scatter Installation" ]
                        else if model.scatterInstalled then
                            a
                                [ class "navbar-item"
                                , onClick ScatterRequestIdentity
                                , href "javascript:;"
                                ]
                                [ text "Enter with Scatter" ]
                        else
                            a
                                [ class "navbar-item"
                                , onClick ScatterInstallPressed
                                , href scatterExtensionLink
                                , target "_blank"
                                ]
                                [ text "Install Scatter Wallet" ]
                in
                    [ p [ class "navbar-item" ] [ loadingIcon model ]
                    , a
                        [ class "navbar-item"
                        , onClick (SetContent Home)
                        , href "javascript:;"
                        ]
                        [ text "Home"
                        ]
                    , scatterButton
                    , aboutButton
                    , helpButton
                    ]
            else
                let
                    soundIcon =
                        "fa fa-2x "
                            ++ if model.isMuted then
                                "fa-volume-off has-text-danger"
                               else
                                "fa-volume-up has-text-success"

                    monstersActiveClass =
                        if model.content == MyMonsters then
                            " is-active"
                        else
                            ""

                    rankActiveClass =
                        if model.content == Rank then
                            " is-active"
                        else
                            ""
                in
                    [ p [ class "navbar-item greetings" ]
                        [ loadingIcon model
                        , text "Hello"
                        , span [] [ b [] [ text model.user.eosAccount ] ]
                        , text "!"
                        ]
                    , a
                        [ class ("navbar-item" ++ monstersActiveClass)
                        , onClick ToggleWallet
                        , href "javascript:;"
                        ]
                        [ icon "suitcase" False False
                        , text (toString model.wallet.funds ++ " EOS")
                        ]
                    , a
                        [ class ("navbar-item" ++ monstersActiveClass)
                        , onClick (SetContent MyMonsters)
                        , href "javascript:;"
                        ]
                        [ icon "paw" False False
                        , text "My Monsters"
                        ]
                    , a
                        [ class ("navbar-item" ++ rankActiveClass)
                        , onClick (SetContent Rank)
                        , href "javascript:;"
                        ]
                        [ icon "trophy" False False
                        , text "Rank"
                        ]
                    , aboutButton
                    , a
                        [ class "navbar-item"
                        , onClick Logout
                        , href "javascript:;"
                        ]
                        [ icon "sign-out" False False
                        , text "Logout"
                        ]
                    , helpButton
                    ]
    in
        nav
            [ attribute "aria-label" "main navigation"
            , class "navbar"
            , attribute "role" "navigation"
            ]
            [ div [ class "navbar-brand logo" ]
                [ text "MonsterEOS" ]
            , div [ class "navbar-menu" ]
                [ div [ class "navbar-end" ]
                    content
                ]
            ]


mainContent : Model -> Html Msg
mainContent model =
    let
        defaultContent content =
            section [ class "section" ]
                [ div [ class "container" ]
                    [ content
                    ]
                ]

        mainContent =
            case model.content of
                Home ->
                    if model.isLoading then
                        section [ class "is-large" ]
                            [ loadingIcon model ]
                    else
                        section [ class "hero is-info is-medium" ]
                            [ div [ class "hero-body" ]
                                [ div [ class "container" ]
                                    [ div
                                        [ class "columns" ]
                                        [ div [ class "column" ]
                                            [ figure [ class "image" ]
                                                [ img [ alt "Tamagotchi Monsters", src "images/monsters/monster-105.png" ]
                                                    []
                                                ]
                                            ]
                                        , div [ class "column" ]
                                            [ h1 [ class "title logo" ]
                                                [ text "I'm a Monster Tamagotchi alike game for EOS blockchain! :)" ]
                                            ]
                                        ]
                                    ]
                                ]
                            ]

                MyMonsters ->
                    defaultContent (monsterContent model)

                Rank ->
                    defaultContent (rankContent model)

                About ->
                    defaultContent (aboutContent model)
    in
        mainContent


aboutContent : Model -> Html Msg
aboutContent model =
    div [ class "content" ]
        [ p [] [ text "I'm Leo and I built this project just as an experiment to play with EOS Testnets available in the community. I have a lot of questions about the EOS RAM Storage, Network Bandwith and Staking in a live chain (also in sidechains), and probably a lot of other developers also have it as I can see in the community. So this is an open source experiment where all of us can play with the contract, architecture and design of tables and see what works the best in terms of performance and good practices." ]
        , b [] [ text "It's Just a Tamagotchi Game to show off EOS blockchain power, even in a TestNet! :D" ]
        , p [] [ text "To keep your pet alive you must feed him, play with him, take him to the bed and wash him!" ]
        , p [] [ text "Only the feeding and sleeping/awake feature is done for now... There's a lot of interesting stuff that we can do here to improve the project like experience points (+ age and evolutions), inventory of items, multiplayer options, breeding, ownership transferring and tokenization." ]
        , p [] [ text "I would love to have another developers to get in touch in GitHub repository, open issues, open discussions and so on, about what would be the best way to design the architecture and implement the contracts, how things should work in blockchain, how we should integrate Scatter, other wallets and provide top-security, what we should avoid, what's the best practice in terms of coding and everything else." ]
        , p [] [ text "I love EOS Community and I think we can build a better world together!" ]
        , p [] [ text "Monsters Pictures Package: ", a [ href "https://pipoya.itch.io/free-rpg-monster-pack", target "_blank" ] [ text "Itch.io @Pipoya - Free RPG Monster Pack" ] ]
        , p [] [ text "Sleeping GIF Credits: ", a [ href "https://giphy.com/stickers/zzz-snore-51WvIEoUKKHlGwgmgy", target "_blank" ] [ text "Giphy @AlabasterPizzo" ] ]
        ]


monsterCard : Monster -> Time.Time -> Bool -> Bool -> Html Msg
monsterCard monster currentTime isLoading readOnly =
    let
        isDead =
            monster.death_at > 0 || monster.health <= 0

        deathTimeTxt =
            formatTime monster.death_at

        birthDateTxt =
            formatTime monster.created_at

        ( sleepingClass, sleepingGif ) =
            if monster.is_sleeping && not isDead then
                ( " sleeping", img [ src "images/zzz.gif" ] [] )
            else
                ( "", text "" )

        ( deadClass, deadImgClass, deathInfo, aliveInfo, interactionFooter ) =
            if isDead then
                ( " has-text-danger"
                , " grayscale"
                , span [ class "is-6 has-text-danger" ]
                    [ br [] []
                    , text "DEAD IN "
                    , time [ datetime deathTimeTxt ]
                        [ text deathTimeTxt ]
                    ]
                , span [ class "is-6 has-text-danger" ]
                    [ text ("Stayed alive for " ++ (calcTimeDiff monster.created_at monster.death_at)) ]
                , footer [ class "card-footer" ]
                    [ div [ class "card-footer-item has-text-centered" ] [ text "Sorry but it would be strange to interact with a dead monster... Wouldn't it?" ]
                    ]
                )
            else
                ( ""
                , ""
                , text ""
                , p [ class "is-6 has-text-success" ]
                    [ text ("Is alive for " ++ (calcTimeDiff monster.created_at currentTime)) ]
                , footer [ class "card-footer" ]
                    (if monster.is_sleeping then
                        [ a
                            [ class "card-footer-item"
                            , onClick (RequestMonsterAwake monster.id)
                            , disabledAttribute isLoading
                            ]
                            [ text "Wake Up!" ]
                        ]
                     else
                        [ a
                            [ class "card-footer-item"
                            , onClick (RequestMonsterFeed monster.id)
                            , disabledAttribute isLoading
                            ]
                            [ text "Feed" ]
                        , a
                            [ class "card-footer-item"
                            , onClick (RequestMonsterPlay monster.id)
                            , disabledAttribute isLoading
                            ]
                            [ text "Play" ]
                        , a
                            [ class "card-footer-item"
                            , onClick (RequestMonsterWash monster.id)
                            , disabledAttribute isLoading
                            ]
                            [ text "Wash" ]
                        , a
                            [ class "card-footer-item"
                            , onClick (RequestMonsterBed monster.id)
                            , disabledAttribute isLoading
                            ]
                            [ text "Bed Time!" ]
                        ]
                    )
                )
    in
        div [ class "column monster-column" ]
            [ div [ class "card" ]
                [ div [ class "card-image" ]
                    [ figure [ class ("image monster-image is-square" ++ deadImgClass) ]
                        [ img [ alt monster.name, class sleepingClass, src ("images/monsters/monster-" ++ (toString monster.mtype) ++ ".png") ]
                            []
                        , sleepingGif
                        ]
                    ]
                , div
                    [ class "card-content" ]
                    [ div [ class "content" ]
                        [ p []
                            [ span [ class ("title is-4" ++ deadClass) ]
                                [ text monster.name ]
                            , span [ class "is-6 is-pulled-right" ]
                                [ b [] [ text "Owner: " ], text monster.owner ]
                            ]
                        , div [ class "is-6" ]
                            [ p []
                                [ text "Birth Date: "
                                , time [ datetime birthDateTxt ]
                                    [ text birthDateTxt ]
                                , br [] []
                                , aliveInfo
                                , deathInfo
                                ]
                            ]
                        , p [ class "is-large has-top-margin" ]
                            [ b [] [ text "HP: " ]
                            , progress [ class "progress is-danger", Html.Attributes.max "100", value (toString monster.health) ]
                                [ text (toString monster.health) ]
                            ]
                        , div [ class "columns is-multiline" ]
                            [ div [ class "column is-half" ]
                                [ b [] [ text "Food: " ]
                                , progress [ class "progress is-primary", Html.Attributes.max "100", value (toString monster.hunger) ]
                                    [ text (toString monster.hunger) ]
                                ]
                            , div [ class "column is-half" ]
                                [ b [] [ text "Happiness: " ]
                                , progress [ class "progress is-warning", Html.Attributes.max "100", value (toString monster.happiness) ]
                                    [ text (toString monster.happiness) ]
                                ]
                            , div [ class "column is-half" ]
                                [ b [] [ text "Awake: " ]
                                , progress [ class "progress is-success", Html.Attributes.max "100", value (toString monster.awake) ]
                                    [ text (toString monster.awake) ]
                                ]
                            , div [ class "column is-half" ]
                                [ b [] [ text "Clean: " ]
                                , progress [ class "progress is-info", Html.Attributes.max "100", value (toString monster.clean) ]
                                    [ text (toString monster.clean) ]
                                ]
                            ]
                        ]
                    ]
                , (if readOnly then
                    text ""
                   else
                    interactionFooter
                  )
                ]
            ]


monsterContent : Model -> Html Msg
monsterContent model =
    let
        myMonsters =
            (model.monsters
                |> List.filter (\monster -> monster.owner == model.user.eosAccount)
                |> List.map (\monster -> monsterCard monster model.currentTime model.isLoading False)
            )

        newMonsterMsg =
            if List.length myMonsters < 1 then
                "Looks like you don't have any Monster yet... What about create a new monster on the above button?!"
            else
                ""
    in
        div []
            [ div [ class "content" ]
                [ a
                    [ class "button is-success new-monster-button"
                    , onClick ToggleMonsterCreation
                    , disabledAttribute model.isLoading
                    ]
                    [ text "New Monster" ]
                , p [] [ text newMonsterMsg ]
                ]
            , div [ class "columns is-multiline" ]
                myMonsters
            ]


rankContent : Model -> Html Msg
rankContent model =
    let
        monsters =
            (model.monsters
                |> List.filter (\monster -> monster.death_at == 0)
                |> List.sortBy .created_at
                |> List.map (\monster -> monsterCard monster model.currentTime model.isLoading True)
            )
    in
        div []
            [ div [ class "content" ]
                [ h2 [] [ text "Eldest Alive Monsters" ]
                ]
            , div [ class "columns is-multiline" ]
                monsters
            ]


pageFooter : Html Msg
pageFooter =
    footer [ class "footer" ]
        [ div [ class "container" ]
            [ div [ class "content has-text-centered" ]
                [ p []
                    [ strong []
                        [ text "MonsterEOS" ]
                    , text " "
                    , a [ href "https://github.com/leordev/monstereos" ]
                        [ text "GitHub" ]
                    , text " - The source code is licensed "
                    , a [ href "http://opensource.org/licenses/mit-license.php" ]
                        [ text "MIT" ]
                    , text "."
                    ]
                ]
            ]
        ]


view : Model -> Html Msg
view model =
    let
        modal =
            if model.showHelp then
                helpModal model
            else if model.showWallet then
                walletModal model
            else if model.showMonsterCreation then
                monsterCreationModal model
            else
                text ""
    in
        div []
            [ topMenu model
            , notificationsView model
            , mainContent model
            , pageFooter
            , modal
            ]
