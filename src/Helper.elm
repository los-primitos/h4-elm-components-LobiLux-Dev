module Helper exposing (..)

import Html
import Html.Attributes


joinWords : String -> String -> String
joinWords word1 word2 =
    word1 ++ word2


isUpperChars : List Char -> List Bool
isUpperChars chars =
    List.map Char.isUpper chars


evalChars : List Char -> (Char -> Bool) -> List Bool
evalChars chars func =
    List.map func chars


headers : String -> Html.Html msg
headers param =
    Html.div []
        [ Html.h1 [] [ Html.text param ]
        , Html.h2 [] [ Html.text param ]
        , Html.h3 [] [ Html.text param ]
        , Html.h4 [] [ Html.text param ]
        , Html.h5 [] [ Html.text param ]
        , Html.h6 [] [ Html.text param ]
        ]


hyperlink : String -> String -> Html.Html msg
hyperlink url text =
    Html.a [ Html.Attributes.href url ] [ Html.text text ]


main : Html.Html msg
main =
    Html.div [] [ headers "Titulos", hyperlink "https://upa.edu.mx" "My School" ]
