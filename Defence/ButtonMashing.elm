module Main exposing (..)

import Html exposing (Html, Attribute, beginnerProgram, div, button, text)
import Html.Attributes exposing (style)
import Html.Events exposing (onClick)
import Css exposing (..)
import Css.Colors exposing (..)
import FML exposing (..)


main : Program Never Model Msg
main =
    beginnerProgram { model = None, view = view, update = update }


type Model
    = None
    | Image
    | SVG
    | Obj
    | Inner
    | Link
    | Form
    | Node


type alias Msg =
    Model


update : Msg -> Model -> Model
update msg model =
    msg


view : Model -> Html Msg
view model =
    case model of
        None ->
            viewer <|
                Html.text "Nothing here."

        Image ->
            viewer image

        SVG ->
            viewer niceSVG

        Obj ->
            viewer linkAtMe

        Inner ->
            viewer innerSoul

        Link ->
            viewer linkAtMe

        Form ->
            viewer formMe

        Node ->
            viewer nodding


viewer : Html Msg -> Html Msg
viewer external =
    div [ myStyle ]
        [ buildButton Image "Image"
        , buildButton SVG "SVG script"
        , buildButton Obj "Object"
        , buildButton Inner "innerHTML"
        , buildButton Link "a, you there!"
        , buildButton Form "Form"
        , buildButton Node "Script Node"
        , div [] [ external ]
        ]


buildButton : Msg -> String -> Html Msg
buildButton msg text =
    button [ bStyle, onClick msg ] [ Html.text text ]


myStyle : Attribute msg
myStyle =
    style
        [ ( "height", "40px" )
        , ( "padding", "10px" )
        , ( "font-size", "2em" )
        , ( "text-align", "center" )
        ]


bStyle : Attribute msg
bStyle =
    (asPairs >> style)
        [ backgroundColor <| black
        , border (px 0)
        , color <| hex "ffffff"
        , textAlign center
        , padding2 (px 12) (px 20)
        , margin <| px 1
        , display inlineBlock
        , fontSize <| px 16
        ]
