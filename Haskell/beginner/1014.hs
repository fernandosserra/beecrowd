-- Doing imports to use Text.Printf
import Text.Printf

-- Core Function
main = do
    -- Requesting values and assign into variables
    distance_travelled <- readLn :: IO Int
    total_fuel <- readLn :: IO Float

    -- Doing the calculations
    let consumption = fromIntegral distance_travelled / total_fuel -- At this time I'm ready for it!

    -- Showing results
    printf "%.3f km/l\n" consumption

-- By Fernando Serra
-- https://github.com/fernandosserra