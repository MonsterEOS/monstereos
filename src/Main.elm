port module Main exposing (..)

import Date.Distance as Distance
import Date
import Html exposing (..)
import Html.Attributes exposing (attribute, class, defaultValue, href, placeholder, target, type_, value, datetime, alt, src, max)
import Html.Events exposing (onClick, onInput)
import Http
import Json.Decode as JD
import Time
import Json.Decode.Pipeline as JDP


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
    , user = User "" ""
    , error = Nothing
    , content = MonsterPage
    , socketsConnected = False
    , currentTime = 0
    , monsters = []
    }


initModel : Flags -> Model
initModel flags =
    let
        loggedIn =
            not (String.isEmpty flags.user.eosAccount)
    in
        { initialModel | user = flags.user }


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
    = Success
    | Error


type Content
    = MonsterPage
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
    , created_at : Int
    , death_at : Int
    , health : Int
    , hunger : Int
    , last_fed_at : Int
    , awake : Int
    , last_bed_at : Int
    , happiness : Int
    , last_play_at : Int
    , clean : Int
    , last_shower_at : Int
    }


type alias Model =
    { isLoading : Bool
    , isMuted : Bool
    , showHelp : Bool
    , scatterInstalled : Bool
    , scatterInstallPressed : Bool
    , user : User
    , error : Maybe String
    , content : Content
    , socketsConnected : Bool
    , currentTime : Time.Time
    , monsters : List Monster
    }



-- Ports


port signOut : () -> Cmd msg


port setTitle : String -> Cmd msg


port feedMonster : Int -> Cmd msg


port updateMonster : Int -> Cmd msg


port listMonsters : () -> Cmd msg


port setMonsters : (JD.Value -> msg) -> Sub msg


port createMonster : String -> Cmd msg


port monsterCreatedSucceed : (String -> msg) -> Sub msg


port monsterCreationFailed : (String -> msg) -> Sub msg


port setScatterInstalled : (Bool -> msg) -> Sub msg


port scatterRequestIdentity : () -> Cmd msg


port scatterRejected : (String -> msg) -> Sub msg


port setScatterIdentity : (JD.Value -> msg) -> Sub msg


port refreshPage : () -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ Time.every Time.second Tick
        , setScatterIdentity ScatterSignIn
        , setScatterInstalled ScatterLoaded
        , scatterRejected ScatterRejection
        , setMonsters SetMonsters
        ]



-- update


type Msg
    = Tick Time.Time
    | SetContent Content
    | ScatterLoaded Bool
    | ScatterSignIn JD.Value
    | RefreshPage
    | ScatterRequestIdentity
    | ScatterInstallPressed
    | ScatterRejection String
    | SetMonsters JD.Value
    | SetMonstersFailure String
    | ToggleHelp
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

        ScatterRejection _ ->
            ( { model | isLoading = False }, Cmd.none )

        ScatterSignIn userJson ->
            case (JD.decodeValue userDecoder userJson) of
                Ok user ->
                    ( { model | user = user }, listMonsters () )

                Err err ->
                    ( { model | error = Just err, isLoading = False }, Cmd.none )

        SetMonsters monsterList ->
            case (JD.decodeValue monstersDecoder monsterList) of
                Ok monsters ->
                    ( { model | monsters = monsters, isLoading = False }, Cmd.none )

                Err err ->
                    ( { model | error = Just err, isLoading = False }, Cmd.none )

        SetMonstersFailure err ->
            ( { model | error = Just err, isLoading = False }, Cmd.none )

        RefreshPage ->
            ( model, refreshPage () )

        Tick time ->
            ( { model | currentTime = time }, Cmd.none )

        SetContent content ->
            ( { model | content = content }, Cmd.none )

        ToggleHelp ->
            ( { model | showHelp = (not model.showHelp) }, Cmd.none )

        Logout ->
            ( initialModel, signOut () )


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


monstersDecoder : JD.Decoder (List Monster)
monstersDecoder =
    JD.list
        (JDP.decode Monster
            |> JDP.required "id" JD.int
            |> JDP.required "owner" JD.string
            |> JDP.required "name" JD.string
            |> JDP.required "type" JD.int
            |> JDP.required "created_at" JD.int
            |> JDP.required "death_at" JD.int
            |> JDP.required "health" JD.int
            |> JDP.required "hunger" JD.int
            |> JDP.required "last_fed_at" JD.int
            |> JDP.required "awake" JD.int
            |> JDP.required "last_bed_at" JD.int
            |> JDP.required "happiness" JD.int
            |> JDP.required "last_play_at" JD.int
            |> JDP.required "clean" JD.int
            |> JDP.required "last_shower_at" JD.int
        )



-- listMonsters : Model -> ( Model, Cmd Msg )
-- listMonsters model =
--     if String.isEmpty model.user.eosAccount then
--         ( { model | error = Just "Please enter with Scatter" }, Cmd.none )
--     else
--         let
--             -- apiKey =
--             --     Http.header "X-API-KEY" "banana"
--             --
--             -- apiSecret =
--             --     Http.header "X-API-SECRET" "apple"
--             monsters =
--                 JE.object
--                     [ ( "code", JE.string "pet" )
--                     , ( "scope", JE.string "pet" )
--                     , ( "table", JE.string "pets" )
--                     , ( "json", JE.bool True )
--                     ]
--
--             url =
--                 "http://127.0.0.1:8888/v1/chain/get_table_rows"
--
--             request =
--                 Http.request
--                     { method = "POST"
--                     , headers = []
--                     , url = url
--                     , body = (Http.jsonBody monsters)
--                     , expect = Http.expectJson monstersDecoder
--                     , timeout = Nothing
--                     , withCredentials = False
--                     }
--
--             cmd =
--                 Http.send MonstersResponse request
--         in
--             ( { model | error = Nothing, isLoading = True }, cmd )
-- helper functions and attributes


scatterExtensionLink : String
scatterExtensionLink =
    "https://chrome.google.com/webstore/detail/scatter/ammjpmhgckkpcamddpolhchgomcojkle"


jungleTestNetLink : String
jungleTestNetLink =
    "http://dev.cryptolions.io"


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


notification : String -> NotificationType -> Maybe Msg -> Html Msg
notification txt notifType closeMsg =
    let
        notifClass =
            case notifType of
                Success ->
                    "is-success"

                Error ->
                    "is-danger"

        closeButton =
            case closeMsg of
                Just msg ->
                    button [ class "delete", onClick msg ]
                        [ text "" ]

                Nothing ->
                    text ""
    in
        div [ class ("notification " ++ notifClass) ]
            [ closeButton
            , text txt
            ]


message : String -> NotificationType -> Html Msg
message txt messageType =
    let
        messageClass =
            case messageType of
                Success ->
                    "is-success"

                Error ->
                    "is-danger"
    in
        article [ class ("message " ++ messageClass) ]
            [ div [ class "message-body" ]
                [ text txt ]
            ]



-- view


errorAlert : Model -> Html Msg
errorAlert model =
    case model.error of
        Just txt ->
            message txt Error

        Nothing ->
            text ""


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
            -- [ form []
            --     [ selectInput
            --         model
            --         periodOptions
            --         "Period"
            --         (periodToString period)
            --         "clock-o"
            --         UpdatePeriod
            --     , fieldInput
            --         model
            --         "Percentage"
            --         percentage
            --         "-9"
            --         "percent"
            --         UpdatePercentage
            --     , fieldInput
            --         model
            --         "Current Period Volume (BTC)"
            --         volume
            --         "50000"
            --         "btc"
            --         UpdateVolume
            --     ]
            -- ]
            [ div []
                [ p [] [ text "It's a fun game where you create your pet and you must take care of him so he does not die." ]
                , p []
                    [ text "You will need to have Scatter installed and create an account on EOS JungleTestNet, so after the scatter installation please follow the below instructions:"
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

        helpButton =
            a
                [ class "navbar-item"
                , onClick ToggleHelp
                ]
                [ span [ class "navbar-item icon is-small" ]
                    [ i [ class "fa fa-2x fa-question-circle has-text-info" ] [] ]
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
                    , scatterButton
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
                in
                    [ p [ class "navbar-item" ]
                        [ loadingIcon model
                        , text ("Hello, " ++ model.user.eosAccount)
                        ]
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
    if String.isEmpty model.user.eosAccount then
        section [ class "hero is-info is-large" ]
            [ div [ class "hero-body" ]
                [ div [ class "container" ]
                    [ h1 [ class "title logo" ]
                        [ text "I'm a Monster Tamagotchi alike game for EOS blockchain! :)" ]
                    ]
                ]
            ]
    else
        let
            menu =
                div [ class "tabs" ]
                    [ ul []
                        [ li
                            [ class
                                (if model.content == MonsterPage then
                                    "is-active"
                                 else
                                    ""
                                )
                            ]
                            [ a [ onClick (SetContent MonsterPage) ]
                                [ icon "paw" False False
                                , text "My Monsters"
                                ]
                            ]
                        , li
                            [ class
                                (if model.content == About then
                                    "is-active"
                                 else
                                    ""
                                )
                            ]
                            [ a [ onClick (SetContent About) ]
                                [ icon "book" False False
                                , text "About"
                                ]
                            ]
                        ]
                    ]

            content =
                case model.content of
                    MonsterPage ->
                        monsterContent model

                    About ->
                        aboutContent model
        in
            section [ class "section" ]
                [ div [ class "container" ]
                    [ menu
                    , content
                    ]
                ]


aboutContent : Model -> Html Msg
aboutContent model =
    div []
        [ p [] [ text "Just a Tamagotchi Game to show off EOS blockchain power, even in a TestNet! :D" ]
        , p [] [ text "To keep your pet alive you must feed him, play with him, take him to the bed and wash him!" ]
        , p [] [ text "Only the feeding feature is done for now... There's a lot of interesting stuff that we can do here to improve the gameplay like experience points, iventory of items, multiplayer options, breeding, ownership transfering and tokenization." ]
        ]


monsterCard : Monster -> Html Msg
monsterCard monster =
    let
        isDead =
            monster.death_at > 0 || monster.health <= 0

        deadClass =
            if isDead then
                " is-danger"
            else
                ""

        deathInfo =
            if isDead then
                p [ class "is-6 is-danger" ]
                    [ text "DEAD IN "
                    , time [ datetime "2016-1-1" ]
                        [ text "Jan, 1st 2016 @ 11:09 PM" ]
                    ]
            else
                text ""
    in
        div [ class "card" ]
            [ div
                [ class "card-content" ]
                [ div [ class "columns" ]
                    [ div [ class "column " ]
                        [ figure [ class "image is-square" ]
                            [ img [ alt monster.name, src ("/images/monsters/monster-" ++ (toString monster.mtype) ++ ".png") ]
                                []
                            ]
                        ]
                    , div
                        [ class "column" ]
                        [ p [ class ("title is-4" ++ deadClass) ]
                            [ text monster.name ]
                        , p [ class "is-6" ]
                            [ b [] [ text "Owner: " ], text monster.owner ]
                        , p [ class "is-6" ]
                            [ text "Born in "
                            , time [ datetime "2016-1-1" ]
                                [ text "Jan, 1st 2016 @ 11:09 PM" ]
                            , text " alive for 3 days and 17 hours "
                            ]
                        , deathInfo
                        , p [ class "is-6" ]
                            [ b [] [ text "HP: " ]
                            , progress [ class "progress is-danger", Html.Attributes.max "100", value (toString monster.health) ]
                                [ text (toString monster.health) ]
                            ]
                        , p [ class "is-6" ]
                            [ b [] [ text "Food: " ]
                            , progress [ class "progress is-primary", Html.Attributes.max "100", value (toString monster.hunger) ]
                                [ text (toString monster.hunger) ]
                            ]
                        , p [ class "is-6" ]
                            [ b [] [ text "Happiness: " ]
                            , progress [ class "progress is-warning", Html.Attributes.max "100", value (toString monster.happiness) ]
                                [ text (toString monster.happiness) ]
                            ]
                        , p [ class "is-6" ]
                            [ b [] [ text "Awake: " ]
                            , progress [ class "progress is-success", Html.Attributes.max "100", value (toString monster.awake) ]
                                [ text (toString monster.awake) ]
                            ]
                        , p [ class "is-6" ]
                            [ b [] [ text "Clean: " ]
                            , progress [ class "progress is-info", Html.Attributes.max "100", value (toString monster.clean) ]
                                [ text (toString monster.clean) ]
                            ]
                        , p [] [ text "" ]
                        , div [ class "footer buttons" ]
                            [ a [ class "button is-primary" ]
                                [ text "Feed" ]
                            , a [ class "button is-warning" ]
                                [ text "Play" ]
                            , a [ class "button is-info" ]
                                [ text "Wash" ]
                            , a [ class "button is-success" ]
                                [ text "Take to Bed" ]
                            ]
                        ]
                    ]
                ]
            ]


monsterContent : Model -> Html Msg
monsterContent model =
    div []
        (model.monsters
            |> List.map monsterCard
        )


view : Model -> Html Msg
view model =
    let
        modal =
            if model.showHelp then
                helpModal model
            else
                text ""

        -- if model.showFilter then
        --     filterModal model
        -- else if model.setupStep /= None then
        --     setupModal model
        -- else
        -- text ""
    in
        div []
            [ topMenu model
            , mainContent model
            , footer [ class "footer" ]
                [ div [ class "container" ]
                    [ div [ class "content has-text-centered" ]
                        [ p []
                            [ strong []
                                [ text "MonsterEOS" ]
                            , text " by "
                            , a [ href "http://leordev.github.io" ]
                                [ text "Leo Ribeiro" ]
                            , text ". The source code is licensed "
                            , a [ href "http://opensource.org/licenses/mit-license.php" ]
                                [ text "MIT" ]
                            , text "."
                            ]
                        ]
                    ]
                ]
            , modal
            ]
