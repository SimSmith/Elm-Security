module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Json.Encode as Json


{-| attribute worked without base64 ones in awhile.
-}
main =
    --object [ property "data" (Json.string "data:text/html;base64,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==") ] []
    object [ attribute "data" "javascript:alert(1)" ] []
