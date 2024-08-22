-- Imports
import Text.Printf
import GHC.Float.RealFracMethods (roundFloatInt)

-- Main Function
main = do
    -- Fixed values
    let y = 60 :: Float
    
    -- Requesting values and assign into variables
    road_time <- readLn :: IO Float

    -- Finding time to pass
    let time_to_pass = (y * road_time) / 30

    -- Showing results
    printf "%d minutos\n" (roundFloatInt time_to_pass)

-- By Fernando Serra
-- https://github.com/fernandosserra