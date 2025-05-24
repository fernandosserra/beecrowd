-- Doing imports
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    d <- readLn :: IO Int
    
    -- Doing the calculations
    let dif = (a * b) - (c * d)

    -- Showing results
    printf "DIFERENCA = %d\n" dif

-- By Fernando Serra
-- https://github.com/fernandosserra