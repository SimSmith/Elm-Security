-- Read all about this program in the official Elm guide:
-- https://guide.elm-lang.org/architecture/user_input/text_fields.html


module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)
import InsertText exposing (..)


main : Program Never String Msg
main =
    beginnerProgram { model = "", view = view, update = update }



-- UPDATE


type Msg
    = NewContent String


update : Msg -> a -> String
update (NewContent content) oldContent =
    content



-- VIEW


view : String -> Html Msg
view content =
    div []
        [ input [ placeholder "Text to be shown", onInput NewContent, myStyle ] []
        , div [ myStyle ] [ printH1 content ]
        ]


myStyle : Attribute msg
myStyle =
    style
        [ ( "width", "100%" )
        , ( "height", "40px" )
        , ( "padding", "10px 0" )
        , ( "font-size", "2em" )
        , ( "text-align", "center" )
        ]
