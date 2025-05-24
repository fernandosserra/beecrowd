-- Doing Imports
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    r <- readLn :: IO Double
    let pi = 3.14159
    let volume = (4.0 / 3.0) * pi * (r ^ 3)
    
    -- Showing results using printf
    printf "VOLUME = %.3f\n" volume

-- By Fernando Serra
-- https://github.com/fernandosserra