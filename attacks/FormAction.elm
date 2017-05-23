module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


main =
    Html.form [ action "javascript:alert('ok')" ]
        [ input [ type_ "submit" ] []
        ]
