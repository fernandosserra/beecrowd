-- https://judge.beecrowd.com/pt/problems/view/1181
-- Linha na Matriz

-- Importing Text.Printf to format output.
import Text.Printf (printf)
import Data.Char (isSpace) -- Para remover espaços em branco, embora menos crítico agora

-- Creating a type alias for Matrix to represent a 2D list of Doubles.
type Matrix = [[Double]]

-- sumLine calculates the sum of elements in a specific row of the matrix.
sumLine :: Int -> Matrix -> Double
sumLine lineNumber matrix = sum (matrix !! lineNumber)

-- averageLine calculates the average of elements in a specific row of the matrix.
averageLine :: Int -> Matrix -> Double
averageLine lineNumber matrix = (sumLine lineNumber matrix) / 12.0

-- CORRECTED AGAIN: readSingleDouble reads a single Double from a single line of input.
-- Ensuring the 'read' conversion happens before 'return'
readSingleDouble :: IO Double
readSingleDouble = do
    lineStr <- getLine
    let value = read lineStr :: Double -- Explicitly type the 'read' result here
    return value                       -- Then return the typed value into IO

-- Helper function to split a list into chunks of a given size.
-- This will create our rows from the flat list of numbers.
chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = take n xs : chunksOf n (drop n xs)

-- readMatrixSequential reads a matrix of size 'rows' x 'cols' by
-- reading one double per line sequentially.
readMatrixSequential :: Int -> Int -> IO Matrix
readMatrixSequential rows cols = do
    -- Create a plain list of Doubles by reading each line
    -- This will read 'rows * cols' lines from input.
    allDoubles <- sequence [readSingleDouble | _ <- [1..rows * cols]]
    
    -- Now rescribe the flat list into a 2D matrix
    return $ chunksOf cols allDoubles

-- our main function orchestrates the reading of input and processing of the matrix.
main :: IO ()
main = do
    -- FIRST, get the line number from input
    lineStr <- getLine
    -- putStrLn $ "DEBUG: Reading line number: '" ++ lineStr ++ "'" -- Para debug
    let lineNumber = read lineStr :: Int

    -- AND THEN, get the operation type from input
    operationStr <- getLine
    -- putStrLn $ "DEBUG: Reading operation: '" ++ operationStr ++ "'" -- Para debug
    let operationChar = head operationStr
    
    -- NOW reading the matrix data sequentially.
    let numRows = 12
    let numCols = 12
    -- putStrLn "DEBUG: Starting matrix sequential read..." -- Para debug
    matrix <- readMatrixSequential numRows numCols
    -- putStrLn "DEBUG: Matrix sequential read completed." -- Para debug

    -- conditionally perform the operation based on the character
    let result = if operationChar == 'S'
                 then sumLine lineNumber matrix
                 else averageLine lineNumber matrix

    -- print the result formatted to one decimal place
    printf "%.1f\n" result

-- By: Fernando Serra (With the help of Washu-sama, a Gem fro Gemini.)
-- https://github.com/fernandosserra