-- https://judge.beecrowd.com/pt/problems/view/1043
-- Importing printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    usr_input <- getLine
    let [a, b, c] = map read (words usr_input) :: [Double]

    -- Finding area
    let area = (a * c) / 2
    -- Finding perimeter
    let perimeter = a + b + c

    -- Finding if is a triangle or a trapezium
    if (a + b) > c && (a + c) > b && (b + c) > a
        then do
            -- Showing results
            printf "Perimetro = %.1f\n" perimeter
        else do
            -- Showing results
            printf "Area = %.1f\n" area

-- By Fernando Serra
-- https://github.com/fernandosserra