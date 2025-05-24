-- https://judge.beecrowd.com/pt/problems/view/1099
-- Soma de ímpares consecutivos II

-- Imports
import Control.Monad (replicateM_)
import Control.Applicative ((<$>))

-- Function to sum odds
sumOddBetween :: Int -> Int -> Int
sumOddBetween x y = sum [n | n <- [(min x y + 1)..(max x y - 1)], odd n]

-- Main function that reads N pairs of numbers
main :: IO ()
main = do
    n <- readLn :: IO Int
    replicateM_ n $ do
        [x, y] <- map read . words <$> getLine
        print $ sumOddBetween x y

-- By Fernando Serra
-- https://github.com/fernandosserra