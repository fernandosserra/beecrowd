-- https://judge.beecrowd.com/pt/problems/view/1044
-- Importing printf
import Text.Printf

-- Main
main = do

    -- Requesting values and assign into variables
    usr_input <- getLine
    let [a, b] = map read (words usr_input) :: [Int]

    -- Finding res
    if a `mod` b == 0 || b `mod` a == 0
        then do
            -- Showing results
            printf "Sao Multiplos\n"
    else do
        -- Showing results
        printf "Nao sao Multiplos\n"

-- By Fernando Serra
-- https://github.com/fernandosserra