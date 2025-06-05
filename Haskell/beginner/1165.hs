-- https://judge.beecrowd.com/pt/problems/view/1165
-- Número Primo

-- Importing Control.Monad - replicateM to iterate between inputs.
import Control.Monad (replicateM, replicateM_)
import Distribution.Simple.Test (test)

-- Starting main function:
main :: IO ()
main = do
    -- Getting test Cases
    nStr <- getLine
    let testCases = read nStr :: Int

    -- Asking for numbers to test
    replicateM_ testCases $ do
        input <- getLine
        let number = read input :: Int
        putStrLn (if isPrime number
                    then show number ++ " eh primo"
                    else show number ++ " nao eh primo")

-- Function to check if a number is prime or not
isPrime :: Int -> Bool
isPrime n 
    | n < 2 = False
    | otherwise = null [x | x <- [2..isQrt n], n `mod` x == 0]

-- Function to check sqrt of the integers
isQrt :: Int  -> Int
isQrt = floor . sqrt . fromIntegral

-- By Fernando Serra
-- https://github.com/fernandosserra