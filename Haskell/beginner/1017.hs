-- Importing printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    time_spent <- readLn :: IO Float
    avg_speed <- readLn :: IO Float

    -- Doing the calculations to find the necessary fuel
    let total_distance =  time_spent * avg_speed / 12

    -- Showing necessary fuel
    printf "%.3f\n" total_distance

-- By Fernando Serra
-- https://github.com/fernandosserra