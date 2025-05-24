-- Importing printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assigning to a variable
    usr_input <- getLine

    -- Turning input into a useful thing
    let usr_value = read usr_input :: Double

    -- Converting the value into cents
    let usr_coins = round (usr_value * 100)

    -- Finding our values for notes and coins
    let (notes, coins) = findNotesNCoins usr_coins

    -- Showing results
    printingResult notes coins

-- Function to find notes and coins
findNotesNCoins :: Int -> ([Int], [Int])
findNotesNCoins usr_coins = (notes, coins)
    where
        -- Calculate number of notes and remaining cents
        (notes, remaining) = foldl calculate ([], usr_coins) centsPerNotes
        
        -- Calculate number of coins from remaining cents
        (coins, _) = foldl calculate ([], remaining) centsPerCoins

        calculate (acc, remainder) value =
            let (q, r) = remainder `divMod` value
            in (acc ++ [q], r)

        -- Values of notes and coins in cents
        centsPerNotes = [10000, 5000, 2000, 1000, 500, 200]
        centsPerCoins = [100, 50, 25, 10, 5, 1]

-- Function to print results
printingResult :: [Int] -> [Int] -> IO ()
printingResult notes coins = do
    putStrLn "NOTAS:"
    mapM_ (uncurry printNote) (zip notes faceNotes)
    putStrLn "MOEDAS:"
    mapM_ (uncurry printCoin) (zip coins faceCoins)
    where
        faceNotes = [100.00, 50.00, 20.00, 10.00, 5.00, 2.00]
        faceCoins = [1.00, 0.50, 0.25, 0.10, 0.05, 0.01]

        printNote :: Int -> Double -> IO ()
        printNote n value = printf "%d nota(s) de R$ %.2f\n" n value

        printCoin :: Int -> Double -> IO ()
        printCoin c value = printf "%d moeda(s) de R$ %.2f\n" c value


{- I had to resort to AI for help.

Basically, the code now has a few more functions that I will detail here:

Calculating notes:

The code uses divMod to calculate the quantity of each note and the remainder 
after subtracting the value of the notes. It does this for each denomination, 
starting with the largest (R$ 100) to the smallest (R$ 2).

Calculating coins:

The remainder of the value, after calculating the notes, is then used to calculate 
the quantity of each coin. This is done in a similar way to the notes.
Printing the result:

The code prints the number of notes and coins with their respective values
​​using the printNote and printCoin functions, which ensure that printf handles 
the types correctly.

Calculating notes and coins: I used the foldl function to iterate over each denomination, 
calculating the number of notes or coins needed and subtracting that value 
from the remainder (remainder). This way, with each iteration, the remainder 
is updated correctly to reflect what has already been accounted for.

Adjustments to the logic: The calculation now takes into account the remaining 
value so that the largest notes are treated first, and the remaining value is 
updated before moving on to the next denomination.

Correct use of foldl: The calculate function is now correctly applied to each denomination of 
centsPerNotes and centsPerCoins. It returns a pair where the first element is the 
accumulated list (acc) and the second is the remainder (remainder).

Accumulation in lists: The accumulated values ​​for notes and coins are built 
by incrementing the lists (acc++[q]), where q is the quantity of each note or coin

Most of this code was done by AI, I used the initial logic, however, 
as I still don't have much command of Haskell, I did it more to understand how Haskell 
can be useful, than for the glory of the resolution itself. -}

-- By Fernando Serra
-- https://github.com/fernandosserra