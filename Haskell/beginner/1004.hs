import Text.Printf

main = do
    -- Requesting values and assign into variables
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    
    -- Doing the calculations
    let prod = a * b

    -- Showing results
    printf "PROD = %d\n" prod

-- By Fernando Serra
-- https://github.com/fernandosserra