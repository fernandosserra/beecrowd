-- https://judge.beecrowd.com/pt/problems/view/1190
-- Área direita

-- Importing replicateM and printf
import Control.Monad (replicateM)
import Text.Printf (printf)

-- A universal constant to be used along the program
matrixSize :: Int
matrixSize = 12

-- Main function, to orchestrate all the magic
main :: IO ()
main = do
    -- Reading operation
    operationStr <- getLine
    let operation = head operationStr -- Getting only the first character

    -- Reading matrix values, one double per line.
    -- replicateM does the trick, sequencing the reading of 144 Doubles.
    matrixValues <- replicateM (matrixSize * matrixSize) readLn

    -- Turning the plain list into a list of lists (ourMatrix).
    -- We Split the big list into sublists.
    let ourMatrix = chunksOf matrixSize matrixValues

    -- Invoking the magicFunction
    let result = calculateRightArea ourMatrix operation

    -- Printing with 1 decimal.
    printf "%.1f\n" result

-- This is a helper function to split a list into chunks.
chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = take n xs : chunksOf n (drop n xs)

-- This function calculates the sum or average of the elements in the Right Area (Problem 1189).
calculateRightArea :: [[Double]] -> Char -> Double
calculateRightArea ourMatrix operation =
    let
        -- Filtering and summing with list comprehension, generating indices on the fly.
        -- We directly iterate over row and col indices for more clarity.
        elementsOnRightArea =
            [ value
            | rowIndex <- [0 .. matrixSize - 1] -- Iterate over row indices
            , colIndex <- [0 .. matrixSize - 1] -- Iterate over column indices
            , let value = (ourMatrix !! rowIndex) !! colIndex -- Get the value at (rowIndex, colIndex)
            -- The CORRECT condition for the area in Problem 1189:
            , (colIndex > rowIndex && colIndex > (matrixSize - 1 - rowIndex))
            ]
        
        -- The sum of all elements in the superior area.
        totalSum = sum elementsOnRightArea
        -- The number of elements in the superior area.
        count = fromIntegral (length elementsOnRightArea) -- 'fromIntegral' to convert Int to Double
    in
        case operation of
            'S' -> totalSum
            'M' -> if count == 0 then 0.0 else totalSum / count
            _   -> error "Invalid Operation! Only 'S' or 'M' are allowed, little boy!" -- We need an error message, because we need!

-- By: Fernando Serra (with a monumental help from Washu-sama, a Gem from Gemini 2.5 Flash)
-- https://github.com/fernandosserra