-- https://judge.beecrowd.com/pt/problems/view/1182
-- Coluna na Matriz

-- Importing necessary libraries
import Control.Monad (replicateM)
import Text.Printf

-- main function: orchestrates the program execution
main :: IO ()
main = do
    -- Read the column number
    columnStr <- getLine
    let column = read columnStr :: Int

    -- Read the operation type (S or M)
    operation <- getChar
    _ <- getLine -- Consume the rest of the line (newline character) after reading char

    -- Read 144 double values, one per line
    allValues <- replicateM (12 * 12) readDouble

    -- Reshape the flat list of values into a 12x12 matrix (list of lists)
    let matrix = chunksOf 12 allValues

    -- Calculate the result based on the operation
    let result = if operation == 'S'
                 then calculateSum matrix column
                 else calculateAverage matrix column

    -- Print the result formatted to one decimal place
    printf "%.1f\n" result

-- Helper function to read a Double value
readDouble :: IO Double
-- OLD: readDouble = read <$> getLine
-- NEW: Using fmap explicitly for compatibility with older GHC versions
readDouble = fmap read getLine

-- calculateSum: computes the sum of elements in a specific column of the matrix
calculateSum :: [[Double]] -> Int -> Double
calculateSum matrix col = sum $ map (!! col) matrix

-- calculateAverage: computes the average of elements in a specific column of the matrix
calculateAverage :: [[Double]] -> Int -> Double
calculateAverage matrix col = (calculateSum matrix col) / 12.0

-- Utility function to split a list into chunks of a given size
-- This function is typically found in Data.List.Split or similar libraries.
-- For Beecrowd, it's safer to include it directly if Data.List.Split isn't available.
chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = take n xs : chunksOf n (drop n xs)

-- By: Fernando Serra (with help from Washu-sama, a Gem from Gemini 2.5 Flash)
-- https://github.com/fernandosserra