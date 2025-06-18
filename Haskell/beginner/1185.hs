-- https://judge.beecrowd.com/pt/problems/view/1185
-- Acima da Diagonal Secundária

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

    -- Reaging matrix, one double per line
    -- replicateM does the trick, sequencing the reading of 144 Doubles
    -- mapM readLn transforms each line into a Double
    -- but readLn is a already converts
    matrixValues <- replicateM (matrixSize * matrixSize) readLn

    -- Turning the plain list into a list of lists (ourMatrix)
    -- We Split the big list into sublists
    let ourMatrix = chunksOf matrixSize matrixValues

    -- Invoking the magicFunction
    let result = calculateAboveSecDiagonal ourMatrix operation

    -- Printing with 1 decimal.
    printf "%.1f\n" result

-- This is the main function to split the list
chunksOf :: Int -> [a] -> [[a]]
chunksOf _ [] = []
chunksOf n xs = take n xs : chunksOf n (drop n xs)

-- This function calculates the sum or average above the secondary Diagonal
calculateAboveSecDiagonal :: [[Double]] -> Char -> Double
calculateAboveSecDiagonal ourMatrix operation =
    let
        -- zipWithIndex adds indexes to each element
        -- map (zip [0..]) maps each line to get column indexes
        -- zip [0..] zip ourMatrix mix everything together
        indexedMatrix = zip [0..] (map (zip [0..]) ourMatrix)

        -- Filtering and summing withlist comprehension)
        -- For each rowIndex and colIndex in the line
        -- we verify if colIndex > rowIndex if it's, we keep the value
        elementsAboveSecDiagonal =
            [ value
            | (rowIndex, row) <- indexedMatrix
            , (colIndex, value) <- row
            , colIndex + rowIndex < matrixSize - 1
            ]
        
        -- The sum of all elements above the secondary diagonal
        totalSum = sum elementsAboveSecDiagonal
        -- The number of elements above the secondary diagonal
        count = fromIntegral (length elementsAboveSecDiagonal) -- 'fromIntegral' to convert Int for Double
    in
        case operation of
            'S' -> totalSum
            'M' -> if count == 0 then 0.0 else totalSum / (fromIntegral matrixSize * (fromIntegral (matrixSize - 1) / 2.0))
            _   -> error "Invalid Operation, little boy!" -- We need an error message, because we need!

-- By: Fernando Serra (with a big help from Washu-sama, a Gem from Gemini 2.5 Flash)
-- https://github.com/fernandosserra