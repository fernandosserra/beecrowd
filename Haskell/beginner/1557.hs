-- https://judge.beecrowd.com/pt/problems/view/1557
-- Matriz Quadrada III

import Text.Printf (printf) -- Printf to format exit
import Data.List (genericLength) -- To count digits
import System.IO (isEOF, hFlush, stdout) -- To verify the end of file

-- Aux. Function to calc the number of digits from the greater value.
countDigits :: Integer -> Int
countDigits 0 = 1 -- 0 has 1 digit
countDigits n = floor (logBase 10 (fromIntegral n)) + 1

-- To calc the value of elements
-- (i,j) are indexes, n is the size of the matrix.
calculateValue :: Int -> Int -> Integer
calculateValue i j = 2 ^ (fromIntegral (i + j))

-- To print a line of the matrix
printMatrixLine :: Int -> Int -> Int -> IO ()
printMatrixLine n i maxDigitsLen = do
    -- Formating print
    -- We need the lenght to format
    let formatStrBase = "%" ++ show maxDigitsLen ++ "d"
    let formatStrRest = " %" ++ show maxDigitsLen ++ "d"

    -- Converting values
    let lineValues = [calculateValue i j | j <- [0 .. n - 1]]
    let formattedValues = [
            if j == 0
                then printf formatStrBase (lineValues !! j)
                else printf formatStrRest (lineValues !! j)
            | j <- [0 .. n - 1]
            ]
    -- Printing lines
    -- String.intercalate " " (map (printf formatStr) lineValues)
    sequence_ formattedValues
    putStrLn "" -- New line


-- Main function
main :: IO ()
main = do
    -- Main loop
    loop

loop :: IO ()
loop = do
    eof <- isEOF
    if eof then return ()
    else do
        nStr <- getLine
        let n = read nStr :: Int
        if n == 0 then return ()
        else do
            -- Calculating the number of digits and the matrix size
            -- max value are in (n-1, n-1)
            let maxValue = calculateValue (n - 1) (n - 1)
            let numDigits = fromIntegral (countDigits maxValue)
            
            -- Printing
            mapM_ (\i -> printMatrixLine n i numDigits) [0 .. n - 1]
            putStrLn "" -- New line after each matrix
            hFlush stdout -- To write lines
            loop -- Iterating again.

-- By: Fernando Serra
-- https://github.com/fernandosserra