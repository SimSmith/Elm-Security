module Main exposing (..)

import Html.Attributes exposing (..)
import Html exposing (..)
import Json.Encode as Encode


main : Html msg
main =
    div []
        [ node "script" [] [ text "function myFun() {alert('Hi');}" ]
        , button
            [ attribute "onclick" "myFun()"

            -- Properties does not work
            -- property "onclick" (Encode.string "myFun()")
            ]
            [ text "Click me!" ]
        , img
            [ property "id" (Encode.string "image")
            , property "onload" (Encode.string "1")
            , src "blah.jpeg"
            ]
            []
        ]
