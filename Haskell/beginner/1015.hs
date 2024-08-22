-- Importing printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    first_line <- getLine
    second_line <- getLine

    -- Extracting values
    let [x1, y1] = map read (words first_line) :: [Double]
    let [x2, y2] = map read (words second_line) :: [Double]

    -- Finding distance
    let distance = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)

    -- Showing results
    printf "%.4f\n" distance

-- By Fernando Serra
-- https://github.com/fernandosserra