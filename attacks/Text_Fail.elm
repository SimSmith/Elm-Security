module Hello exposing (..)

import Html exposing (text, p)


main : Html.Html msg
main =
    Html.div []
        [ text "Hola mundo!"
        , p [] [ text "<script>alert(\"Pop goes the security.\");</script>" ]
        ]
