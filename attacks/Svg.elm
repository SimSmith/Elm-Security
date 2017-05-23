module Main exposing (..)

import Svg exposing (..)
import Svg.Attributes exposing (..)


main =
    svg
        []
        [ script [ type_ "text/javascript" ] [ text "alert('ok')" ] ]
