module InsertText exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Json.Encode as Json


{-| Exploit:
Hey!<script>alert()</script>
-}
printH1 : String -> Html m
printH1 text =
    div [ property "innerHTML" <| Json.string <| "<h1>" ++ text ++ "</h1>" ] []


{-| Danger:
javascript:console.log("hej");
document.location="http://elm-lang.org/examples/"
-}
aLink : String -> Html m
aLink con =
    a [ href con ] [ text con ]


{-| Exploit:
alert()
-}
dumbImg : String -> Html m
dumbImg cont =
    img
        [ attribute "onmouseover" cont
        , src "colorpicker.gif"
        ]
        []
