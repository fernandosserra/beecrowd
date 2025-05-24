-- Importing files
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    doc <- readLn :: IO Int
    hours <- readLn :: IO Int
    hour_value <- readLn :: IO Float
    
    -- Doing the calculations
    let total_income = fromIntegral hours * hour_value
    -- Nice to see, in Haskell we cannot multiply int and float directly
    
    -- Showing results
    printf "NUMBER = %d\n" doc
    printf "SALARY = U$ %.2f\n" total_income

-- By Fernando Serra
-- https://github.com/fernandosserra