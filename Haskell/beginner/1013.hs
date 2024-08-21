-- Doing imports to use functions
import Text.Printf
import GHC.Float.RealFracMethods (roundFloatInt)

-- Main Function
main = do
    -- Requesting values and assign into variables
    user_expression <- getLine

    -- Now, we can use this to extract values.
    let [a, b, c] = map read (words user_expression) :: [Float]

    -- Aftr extract our values, we can do the calculations
    let greaterAB = (a + b + abs(a - b)) / 2 -- Remember! Don't use mixed types in Haskell!!
    let greaterAC = (greaterAB + c + abs(greaterAB - c)) / 2

    -- Then, we can test our great value and show the result
    if greaterAB > greaterAC then
        printf "%d eh o maior\n" (roundFloatInt greaterAB) -- Now we need to roun this value to show it as an integer
    else
        printf "%d eh o maior\n" (roundFloatInt greaterAC)

-- By Fernando Serra
-- https://github.com/fernandosserra