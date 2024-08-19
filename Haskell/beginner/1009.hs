-- Doing imports
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    name <- getLine -- Lol, What a weird way to grab a string
    base_salary <- readLn :: IO Double
    sales <- readLn :: IO Double
    
    -- Doing the calculations
    let final_salary = base_salary + (sales * 0.15)

    -- Showing results
    printf "TOTAL = R$ %.2f\n" final_salary

-- By Fernando Serra
-- https://github.com/fernandosserra