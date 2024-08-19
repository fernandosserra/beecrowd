-- Importing functions
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables (Ok, this is harder than I expected. Thanks again Google!)
    order_1 <- getLine
    order_2 <- getLine

    -- Extracting values:
    let [_, amnt1, value1] = map read (words order_1) :: [Double] -- 1
    let [_, amnt2, value2] = map read (words order_2) :: [Double] -- 2

    -- Doing the calculations
    let total = (amnt1 * value1) + (amnt2 * value2)

    -- Showing results
    printf "VALOR A PAGAR: R$ %.2f\n" total

-- By Fernando Serra
-- https://github.com/fernandosserra