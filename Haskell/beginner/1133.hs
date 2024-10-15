-- https://judge.beecrowd.com/pt/problems/view/1133
-- Resto da divisão

-- Importing intecalate. This function will help us to print results from a list, without brackets and adding new lines between values
import Data.List (intercalate)

-- Main
main = do
    -- Getting Interval
    x <- readLn
    y <- readLn
    -- Testing Interval
    if x > y
        then do
            -- Testing conditions and saving them into a list
            let valuesList = ([i | i <- [y + 1..x - 1], i `mod` 5 == 2 || i `mod` 5 == 3])
            -- Using function intercalate to separate results and put a new line between them
            let results = intercalate "\n" (map show valuesList)
            -- Printing results
            putStrLn results
        else do
            -- Testing conditions and saving them into a list
            let valuesList = ([i | i <- [x + 1..y - 1], i `mod` 5 == 2 || i `mod` 5 == 3])
            -- Using function intercalate to separate results and put a new line between them
            let results = intercalate "\n" (map show valuesList)
            -- Printing results
            putStrLn results

-- By Fernando Serra
-- https://github.com/fernandosserra