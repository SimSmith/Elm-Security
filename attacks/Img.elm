module Hello exposing (..)

import Html.Attributes exposing (..)
import Html exposing (..)
import Json.Encode as Encode


main : Html msg
main =
    img
        [ attribute "onmouseover" "alert();"
        , src "colorpicker.gif"
        ]
        []
