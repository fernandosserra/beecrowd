-- https://judge.beecrowd.com/pt/problems/view/1038
-- Importing printf
import Text.Printf

-- Main
main = do
    -- Assigning item values    
    let item_values = [4.00, 4.50, 5.00, 2.00, 1.50] :: [Double]
    
    -- Requesting values
    usr_input <- getLine

    -- Extracting values
    let [item, qtt] = map read (words usr_input) :: [Int]

    -- Showing results
    printf "Total: R$ %.2f\n" (fromIntegral qtt * item_values !! (item - 1))
    -- I had to convert the qtt variable to be able to multiply, since in this language, we cannot mix types.

-- By Fernando Serra
-- https://github.com/fernandosserra