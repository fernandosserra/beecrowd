-- https://judge.beecrowd.com/pt/problems/view/1154
-- Idades

-- Importing Printf
import Text.Printf (printf)

-- Main
main :: IO ()
main = processAges 0 0

-- Recursive function to read ages
processAges :: Int -> Int -> IO ()
processAges sum count = do
    input <- getLine
    let age = read input :: Int
    if age < 0
        then if count == 0
            then putStrLn "0.00" -- If no valid ages are given
            else do
                let average = fromIntegral sum / fromIntegral count :: Double
                putStrLn (printf "%.2f" average)
        else processAges (sum + age) (count + 1)

-- By Fernando Serra with some help from GPT (I'm still learning Haskell by trial and error, making GPT my Teacher...)
-- https://github.com/fernandosserra