-- https://judge.beecrowd.com/pt/problems/view/1177
-- Preenchimento de Vetor II

-- Importing necessary libraries
import Control.Monad (replicateM_)
import Text.Printf (printf)

-- Recursive function to print the vector elements
vectorDisplay :: [Int] -> Int -> IO ()
vectorDisplay [] _ = return ()
vectorDisplay (x:xs) idx = do
    printf "N[%d] = %d\n" idx x
    vectorDisplay xs (idx + 1)


main :: IO ()
main = do
    -- Read the integer T from input
    input <- getLine
    let t = read input :: Int

    -- Create a vector of 1000 elements using the formula i `mod` t
    let vetor = [i `mod` t | i <- [0..999]]

    -- Print the elements of the vector
    vectorDisplay vetor 0

-- By: Fernando Serra (Thanks, Washu-sama!)
-- https://github.com/fernandosserra