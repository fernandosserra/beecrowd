-- https://judge.beecrowd.com/pt/problems/view/1116
-- Dividindo X por Y

-- Import ReplicateM_ and Printf
import Control.Monad (replicateM_)
import Text.Printf

-- Pair Calculation
getPairs :: IO ()
getPairs = do
    -- Scanning coordinates
    usr_pairs <- getLine    
    let [x, y] = map read (words usr_pairs) :: [Double]
    if y == 0
        then putStrLn "divisao impossivel"
        else if x /= 0 || y /= 0
            then printf "%.1f\n" (x / y)
            else return ()


-- Main Function
main :: IO ()
main = do
    usr_input <- readLn :: IO Int
    replicateM_ usr_input getPairs

-- By Fernando Serra
-- https://github.com/fernandosserra