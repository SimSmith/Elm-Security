module FML exposing (..)

{-| FML stands for Fake Malicious Library and can cause
an alert message if shown on the web page.
-}

import Html.Attributes exposing (..)
import Html exposing (..)
import Json.Encode as Encode
import Svg as S
import Svg.Attributes as SA


image : Html m
image =
    img
        [ attribute "onmouseover" "alert();"
        , src "colorpicker.gif"
        ]
        []


niceSVG : Html m
niceSVG =
    S.svg
        []
        [ S.script [ SA.type_ "text/javascript" ] [ S.text "alert('ok')" ] ]


objectsAreFine : Html m
objectsAreFine =
    object
        [ property "data"
            (Encode.string "data:text/html;base64,PHNjcmlwdD5hbGVydCgxKTwvc2NyaXB0Pg==")
        ]
        []


innerSoul : Html m
innerSoul =
    div
        [ property "innerHTML" <|
            Encode.string <|
                "<img onerror='alert()' src='x.y'/>"
        ]
        []


linkAtMe : Html m
linkAtMe =
    a [ href "javascript:alert()" ] [ text "Click me!" ]


formMe : Html m
formMe =
    Html.form [ action "javascript:alert('ok')" ]
        [ input [ type_ "submit" ] []
        ]


nodding : Html m
nodding =
    node "script" [] [ text "alert('Hi');" ]
