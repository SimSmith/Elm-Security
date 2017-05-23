module AttributeNS exposing (..)

import Html.Attributes exposing (..)
import VirtualDom as VD
import Html exposing (..)


main : Html msg
main =
    img
        [ VD.attributeNS "http://www.w3schools.com" "onmouseover" "alert();"

        --attribute "onmouseover" "alert();"
        , src "colorpicker.gif"
        ]
        []
