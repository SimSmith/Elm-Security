module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Json.Encode as Json


main =
    object [ property "data" (Json.string "data:text/html;base64,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==") ] []
