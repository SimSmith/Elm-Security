module Main exposing (..)

import Html exposing (div, node, text)


main =
    div []
        [ node "script" [] [ text "alert('Hi');" ] ]
