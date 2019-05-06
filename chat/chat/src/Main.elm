module Main exposing (..)
import Browser
import Html exposing (..)

main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }

-- MODEL

type alias Model =
    {}

init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )


---- UPDATE ----

type Msg
    = NoOp

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )

---- VIEW ----

view : Model -> Html.Html Msg
view model =
    div []
        [ h1 [] [ text "チャットをしましょう！" ]
        ]
