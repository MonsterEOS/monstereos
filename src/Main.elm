port module Main exposing (..)

import Date.Distance as Distance
import Date
import Html exposing (..)
import Html.Attributes exposing (attribute, class, defaultValue, href, placeholder, target, type_, value)
import Html.Events exposing (onClick, onInput)
import Http
import Json.Decode as JD
import Json.Decode.Pipeline as JDP
import Time


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
    , showHelp = False
    , user = User ""
    , error = Nothing
    , content = About
    , socketsConnected = False
    , currentTime = 0
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
    = Monster
    | About


type alias Flags =
    { user : User
    }


type alias User =
    { eosAccount : String
    }


type alias Model =
    { isLoading : Bool
    , isMuted : Bool
    , showHelp : Bool
    , user : User
    , error : Maybe String
    , content : Content
    , socketsConnected : Bool
    , currentTime : Time.Time
    }



-- Ports


port signOut : () -> Cmd msg


port setTitle : String -> Cmd msg


port feedMonster : Int -> Cmd msg


port updateMonster : Int -> Cmd msg


port createMonster : String -> Cmd msg


subscriptions : Model -> Sub Msg
subscriptions model =
    if not (String.isEmpty model.user.eosAccount) then
        Sub.batch
            [ Time.every Time.second Tick
            ]
    else
        Sub.none



-- update


type Msg
    = Tick Time.Time
    | SetContent Content
    | ToggleHelp
    | Logout


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Tick time ->
            ( { model | currentTime = time }, Cmd.none )

        SetContent content ->
            ( { model | content = content }, Cmd.none )

        ToggleHelp ->
            ( { model | showHelp = (not model.showHelp) }, Cmd.none )

        Logout ->
            ( initialModel, signOut () )


userDecoder : JD.Decoder User
userDecoder =
    JD.field "data"
        (JDP.decode User
            |> JDP.required "account" JD.string
        )


updateUserSetup : Model -> ( Model, Cmd Msg )
updateUserSetup model =
    if String.isEmpty model.user.eosAccount then
        ( { model | error = Just "Please enter ...." }, Cmd.none )
    else
        let
            apiKey =
                Http.header "X-API-KEY" "banana"

            apiSecret =
                Http.header "X-API-SECRET" "apple"

            url =
                "/api/test"

            request =
                Http.request
                    { method = "POST"
                    , headers = [ apiKey, apiSecret ]
                    , url = url
                    , body = Http.emptyBody
                    , expect = Http.expectJson userDecoder
                    , timeout = Nothing
                    , withCredentials = False
                    }

            -- cmd =
            --     Http.send UserKeysResponse request
        in
            ( { model | error = Nothing, isLoading = True }, Cmd.none )



-- helper functions


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



-- leaving this modal here as an example
-- filterModal : Model -> Html Msg
-- filterModal model =
--     let
--         periodOptions =
--             [ ( "3m", "3 Minutes Period" )
--             , ( "5m", "5 Minutes Period" )
--             , ( "10m", "10 Minutes Period" )
--             , ( "15m", "15 Minutes Period" )
--             , ( "30m", "30 Minutes Period" )
--             ]
--
--         modalClass =
--             if model.showFilter then
--                 "modal is-active"
--             else
--                 "modal"
--
--         filterData =
--             model.filter
--
--         percentage =
--             (toString filterData.percentage)
--
--         period =
--             filterData.period
--
--         volume =
--             (toString filterData.volume)
--     in
--         modalCard model
--             "Update Scanner Filter"
--             ResetFilter
--             [ form []
--                 [ selectInput
--                     model
--                     periodOptions
--                     "Period"
--                     (periodToString period)
--                     "clock-o"
--                     UpdatePeriod
--                 , fieldInput
--                     model
--                     "Percentage"
--                     percentage
--                     "-9"
--                     "percent"
--                     UpdatePercentage
--                 , fieldInput
--                     model
--                     "Current Period Volume (BTC)"
--                     volume
--                     "50000"
--                     "btc"
--                     UpdateVolume
--                 ]
--             ]
--             (Just ( "Submit", SetFilter ))
--             (Just ( "Cancel", ResetFilter ))


topMenu : Model -> Html Msg
topMenu model =
    let
        loggedOut =
            String.isEmpty model.user.eosAccount

        content =
            if loggedOut then
                [ p [ class "navbar-item" ] [ loadingIcon model ]
                , a [ class "navbar-item", onClick ToggleHelp ]
                    [ text "Login" ]
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
                        ]
                        [ icon "sign-out" False False
                        , text "Logout"
                        ]
                    , a
                        [ class "navbar-item"
                        , onClick ToggleHelp
                        ]
                        [ span [ class "navbar-item icon is-small" ]
                            [ i [ class soundIcon ] [] ]
                        ]
                    ]
    in
        nav
            [ attribute "aria-label" "main navigation"
            , class "navbar"
            , attribute "role" "navigation"
            ]
            [ div [ class "navbar-brand logo" ]
                [ text "Monstereos" ]
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
                    [ h2 [ class "subtitle" ]
                        [ text "Monstereos" ]
                    , h1 [ class "title logo" ]
                        [ text "I'm a Tamagotchi alike monster for EOS blockchain! :)" ]
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
                                (if model.content == Monster then
                                    "is-active"
                                 else
                                    ""
                                )
                            ]
                            [ a [ onClick (SetContent Monster) ]
                                [ icon "bullhorn" False False
                                , text "My Monster"
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
                                [ icon "line-chart" False False
                                , text "About"
                                ]
                            ]
                        ]
                    ]

            content =
                case model.content of
                    Monster ->
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
    p [] [ text "Just an Tamagotchi Game to show off eos blockchain power, even in TestNet! :D" ]


monsterContent : Model -> Html Msg
monsterContent model =
    p [] [ text "Hello!!!" ]


view : Model -> Html Msg
view model =
    let
        modal =
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
                                [ text "Monstereos" ]
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
