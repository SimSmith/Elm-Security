module Main exposing (..)

import Html exposing (div)
import Html.Attributes exposing (property, attribute)
import Json.Encode exposing (string)


main : Html.Html m
main =
    printH1 "head"


printH1 : String -> Html.Html m
printH1 text =
    div [ property "innerHTML" <| string <| "<h1>" ++ text ++ "</h1>" ] []
