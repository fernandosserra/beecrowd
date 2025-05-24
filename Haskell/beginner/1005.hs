-- Doing imports
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    a <- readLn :: IO Float
    b <- readLn :: IO Float
    
    -- Doing the calculations
    let media = ((a * 3.5) + (b * 7.5)) / 11

    -- Showing results
    printf "MEDIA = %.5f\n" media

-- By Fernando Serra
-- https://github.com/fernandosserra