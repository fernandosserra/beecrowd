-- https://judge.beecrowd.com/pt/problems/view/1041
-- Getting printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    usr_input <- getLine
    let points = map read (words usr_input) :: [Double]
    let [a, b] = points

    -- Finding Quadrant
    if a > 0 && b > 0
        then printf "Q1\n"
    else if a < 0 && b > 0
        then printf "Q2\n"
    else if a < 0 && b < 0
        then printf "Q3\n"
    else if a > 0 && b < 0
        then printf "Q4\n"
    else if a == 0 && b == 0
        then printf "Origem\n"
    else if a == 0
        then printf "Eixo Y\n"
    else if b == 0
        then printf "Eixo X\n"
    else
        printf "Erro\n"

-- By Fernando Serra
-- https://github.com/fernandosserra