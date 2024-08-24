-- Importing printf
import Text.Printf

-- My old friend to find the rest of the division in Haskell
findRest :: Int -> Int -> Int
findRest a b = a `mod` b

-- Main Function
main = do
    -- Requesting values and assign into variables
    usr_days <- readLn :: IO Int

    -- Doing the calculations
    let usr_years = usr_days `div` 365
    let rest_usr_years = findRest usr_days 365
    let usr_months = rest_usr_years `div` 30
    let rest_usr_months = findRest rest_usr_years 30
    let rest_usr_days = rest_usr_months
    
    -- Showing results
    printf "%d ano(s)\n" usr_years
    printf "%d mes(es)\n" usr_months
    printf "%d dia(s)\n" rest_usr_days

-- By Fernando Serra
-- https://github.com/fernandosserra