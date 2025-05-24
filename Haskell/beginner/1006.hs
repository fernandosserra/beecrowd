-- Doing imports
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    a <- readLn :: IO Float
    b <- readLn :: IO Float
    c <- readLn :: IO Float
    
    -- Doing the calculations
    let media = ((a * 2) + (b * 3) + (c * 5)) / 10

    -- Showing results
    printf "MEDIA = %.1f\n" media

-- By Fernando Serra
-- https://github.com/fernandosserra