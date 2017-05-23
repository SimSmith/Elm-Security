module ScrollTest exposing (..)

import Html
import Html exposing (Html, Attribute, div, text, button)
import Html.Attributes exposing (style, property)
import Html.Events exposing (onClick)
import Json.Encode as Json
import String


main : Program Never Model Msg
main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }



-- MODEL


type alias Model =
    Bool


model : Model
model =
    False



-- UPDATE


type Msg
    = Toggle


update : Msg -> Model -> Model
update msg model =
    case msg of
        Toggle ->
            not model



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Toggle ] [ text "Toggle" ]
        , div (divStyle model)
            [ text aLotOfText ]
        , div [] [ text (toString model) ]
        ]


(=>) =
    (,)


divStyle : Bool -> List (Attribute msg)
divStyle scrolled =
    [ style
        [ "border" => "1px solid black"
        , "overflow" => "scroll"
        , "width" => "100px"
        , "height" => "100px"
        ]
    ]
        ++ if scrolled then
            [ property "scrollTop" (Json.int 1000) ]
           else
            []


aLotOfText : String
aLotOfText =
    String.repeat 20 "A lot of text! "
