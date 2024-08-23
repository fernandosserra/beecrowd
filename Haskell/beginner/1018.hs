-- Importing printf
import Text.Printf
-- Finding Rest
findRest :: Int -> Int -> Int
findRest a b = a `mod` b

-- Main Function
main = do
    -- Requesting amount to user
    amnt <- readLn :: IO Int
    
    {-Here I needed to create a remainder variable for each value, 
    as I couldn't find a simpler logic.-}
    printf "%d\n" amnt
    printf "%d nota(s) de R$ 100,00\n" (amnt `div` 100)
    let rest100 = findRest amnt 100
    printf "%d nota(s) de R$ 50,00\n" (rest100 `div` 50)
    let rest50 = findRest rest100 50
    printf "%d nota(s) de R$ 20,00\n" (rest50 `div` 20)
    let rest20 = findRest rest50 20
    printf "%d nota(s) de R$ 10,00\n" (rest20 `div` 10)
    let rest10 = findRest rest20 10
    printf "%d nota(s) de R$ 5,00\n" (rest10 `div` 5)
    let rest5 = findRest rest10 5
    printf "%d nota(s) de R$ 2,00\n" (rest5 `div` 2)
    let rest2 = findRest rest5 2
    printf "%d nota(s) de R$ 1,00\n" rest2

-- By Fernando Serra
-- https://github.com/fernandosserra