-- https://judge.beecrowd.com/pt/problems/view/1534
-- Matriz 123

-- Importing replicateM and printf
import Control.Monad (replicateM)
import Text.Printf (printf)

-- Function to calculate if the value are in the main diagonal, in the secondary diagonal or in the other positions
positionFinder :: Int -> Int -> Int -> Int
positionFinder r c n
    | r + c == n - 1 = 2  -- Secondary diagonal (needs to be evaluated first)
    | r == c         = 1  -- Main diagonal 
    | otherwise      = 3  -- Other positions

-- Main Function
main :: IO ()
main = do
    -- Loop to read multiple entries until EOF
    contents <- getContents
    mapM_ processLine $ lines contents
  where
    processLine line = do
        let n = read line :: Int
        -- Generating our Matrix line by line
        let matrix = [[positionFinder r c n | c <- [0..n-1]] | r <- [0..n-1]]
        -- Printing the matrix
        mapM_ (putStrLn . concatMap show) matrix

-- By: Fernando Serra
-- https://github.com/fernandosserra