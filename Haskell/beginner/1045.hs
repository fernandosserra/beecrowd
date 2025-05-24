-- https://judge.beecrowd.com/pt/problems/view/1045 
-- Importing required functions
import Text.Printf
import Data.List (sort)

main :: IO ()
main = do
    -- Requesting input
    input <- getLine
    let lados = map read (words input) :: [Double]
    let [a, b, c] = reverse (sort lados)  -- Sort in descending order

    -- Check if it forms a triangle
    if a >= b + c then
        printf "NAO FORMA TRIANGULO\n"
    else do
        -- Check triangle type
        if a^2 == b^2 + c^2 then
            printf "TRIANGULO RETANGULO\n"
        else if a^2 > b^2 + c^2 then
            printf "TRIANGULO OBTUSANGULO\n"
        else
            printf "TRIANGULO ACUTANGULO\n"

        -- Check if it is equilateral or isosceles
        if a == b && b == c then
            printf "TRIANGULO EQUILATERO\n"
        else if a == b || a == c || b == c then
            printf "TRIANGULO ISOSCELES\n"
        else
            return()

-- By Fernando Serra
-- https://github.com/fernandosserra
-- I had a lot of help from ChatGPT and the Haskell documentation for this fix