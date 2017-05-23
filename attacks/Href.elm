module Main exposing (..)

import Html.Attributes exposing (..)
import Html exposing (..)


main : Html msg
main =
    a [ href "javascript:alert()" ] [ text "Click me!" ]
