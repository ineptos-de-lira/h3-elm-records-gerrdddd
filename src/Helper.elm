module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- 1) BASIC FUNCTIONS


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op =
    op x y



-- 2) RECORDS EXERCISE: LANGUAGES


type alias Language =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languageNames : List Language -> List String
languageNames langs =
    List.map .name langs



-- 3) RECORDS EXERCISE: USERS


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents us =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        us



-- 4) VIDEOGAMES


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres vgs =
    List.map .genres vgs



-- 5) HTML / COMPUTER


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "MacBook Air"
    , brand = "Apple"
    , screenSize = "13"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
