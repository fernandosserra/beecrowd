import Text.Printf
main = do
    -- Requesting values and assign into variables
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    
    -- Doing the calculations
    let soma = a + b

    -- Showing results
    printf "SOMA = %d\n" soma

-- By Fernando Serra
-- https://github.com/fernandosserra