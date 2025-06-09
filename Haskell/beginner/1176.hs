-- https://judge.beecrowd.com/pt/problems/view/1176
-- Fibonacci em Vetor

-- Importing necessary libs and modules
import Control.Monad (replicateM_)
import qualified Data.List as List
import qualified Data.ByteString as L

-- Creating a list of Fibonacci numbers using lazy recursion
lazyFibs :: [Integer]
lazyFibs = 0 : 1 : zipWith (+) lazyFibs (drop 1 lazyFibs)

-- Getting inputs and Accessing idnezes.
main :: IO ()
main = do
    testCases <- readLn
    replicateM_ testCases $ do
        indexes <- readLn
        putStrLn $ "Fib(" ++ show indexes ++ ") = " ++ show (lazyFibs !! indexes)

-- By: Fernando Serra
-- https://github.com/fernandosserra