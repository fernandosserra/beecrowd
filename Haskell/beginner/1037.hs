-- https://judge.beecrowd.com/pt/problems/view/1037
-- Importing printf
import Text.Printf

-- Main
main = do
    -- Requesting values and assign into variables
    usr_input <- readLn :: IO Float

    -- Finding where the number is included
    if usr_input >= 0 && usr_input <= 25
        then printf "Intervalo [0,25]\n"
    else if usr_input > 25 && usr_input <= 50
        then printf "Intervalo (25,50]\n"
    else if usr_input > 50 && usr_input <= 75
        then printf "Intervalo (50,75]\n"
    else if usr_input > 75 && usr_input <= 100
        then printf "Intervalo (75,100]\n"
    else printf "Fora de intervalo\n"

-- By Fernando Serra
-- https://github.com/fernandosserra