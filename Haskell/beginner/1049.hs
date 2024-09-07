-- https://www.beecrowd.com.br/judge/pt/problems/view/1049
-- Importing printf
import Text.Printf

-- Main
main = do
    -- Requesting the first class
    first_class <- getLine
    
    if first_class == "vertebrado"
        then do
            -- Requesting the second class
            second_class <- getLine
            if second_class == "ave"
                then do
                    -- Requesting the third class
                    third_class <- getLine
                    if third_class == "carnivoro"
                        then do
                            -- Showing results
                            printf "aguia\n"
                        else do
                            -- Showing results
                            printf "pomba\n"
                else do
                    -- Requesting the third class
                    third_class <- getLine
                    if third_class == "onivoro"
                        then do
                            -- Showing results
                            printf "homem\n"
                        else do
                            -- Showing results
                            printf "vaca\n"
                else do
                    -- Requesting the second class
                    second_class <- getLine
                    if second_class == "inseto"
                        then do
                            -- Requesting the third class
                            third_class <- getLine
                            if third_class == "hematofago"
                                then do
                                    -- Showing results
                                    printf "pulga\n"
                                else do
                                    -- Showing results
                                    printf "lagarta\n"
                        else do
                            -- Requesting the third class
                            third_class <- getLine
                            if third_class == "hematofago"
                                then do
                                    -- Showing results
                                    printf "sanguessuga\n"
                                else do
                                    -- Showing results
                                    printf "minhoca\n"

-- By Fernando Serra
-- https://github.com/fernandosserra