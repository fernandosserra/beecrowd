-- https://judge.beecrowd.com/pt/problems/view/1052
-- Mês

-- Getting printf to print twelve months
import Text.Printf

-- Writing a main block to be our calendar
main = do
    -- Requesting values and assign into variables
    month <- readLn :: IO Int

    -- Doing the calculations
    case month of
        1 -> printf "January\n"
        2 -> printf "February\n"
        3 -> printf "March\n"
        4 -> printf "April\n"
        5 -> printf "May\n"
        6 -> printf "June\n"
        7 -> printf "July\n"
        8 -> printf "August\n"
        9 -> printf "September\n"
        10 -> printf "October\n"
        11 -> printf "November\n"
        12 -> printf "December\n"
        _  -> printf "Mes invalido\n"

-- By Fernando Serra
-- https://github.com/fernandosserra