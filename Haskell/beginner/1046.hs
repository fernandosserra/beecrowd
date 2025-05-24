-- https://judge.beecrowd.com/pt/problems/view/1046
-- Getting printf to print some awesome numbers
import Text.Printf

-- Main Function to do main things
main = do
    -- Requesting values and assign into variables
    usr_input <- getLine
    let [starting_hour, ending_hour] = map read (words usr_input) :: [Int]

    if starting_hour < ending_hour
        then do
            -- Showing results
            printf "O JOGO DUROU %d HORA(S)\n" (ending_hour - starting_hour)
        else do
            -- Showing results
            printf "O JOGO DUROU %d HORA(S)\n" (24 - starting_hour + ending_hour)

-- By Fernando Serra
-- https://github.com/fernandosserra