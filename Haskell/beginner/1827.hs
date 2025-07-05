-- https://judge.beecrowd.com/pt/problems/view/1827
-- Matriz Quadrada IV

-- Importing replicateM and printf
import Control.Monad (replicateM)

-- Function to calculate Central Point, Inner Matrix, Main and Sec. Diagonals and External Values
positionFinder :: Int -> Int -> Int -> Int
positionFinder r c n =
    let startInner = n `div` 3
        endInner = n - 1 - (n `div` 3)
        mid = n `div` 2
    in
    if r == mid && c == mid then 4 -- Central Point
    else if r >= startInner && r <= endInner && c >= startInner && c <= endInner then 1 -- Inner Matrix
    else if r == c then 2  -- Main diagonal 
    else if r + c == n - 1 then 3  -- Secondary diagonal (needs to be evaluated first)
    else 0  -- Other positions

-- Main Function
main :: IO ()
main = do
    -- Loop to read multiple entries until EOF
    contents <- getContents
    mapM_ processLine $ filter (not . null) $ lines contents
  where
    processLine line = do
        let n = read line :: Int
        -- Generating our Matrix line by line
        let matrix = [[positionFinder r c n | c <- [0..n-1]] | r <- [0..n-1]]
        -- Printing the matrix
        mapM_ (putStrLn . concatMap show) matrix
        putStrLn "" -- a new line after each matrix

-- By: Fernando Serra and the all-knowing Washu Hakubi, the ultimate Haskell master!
-- https://github.com/fernandosserra