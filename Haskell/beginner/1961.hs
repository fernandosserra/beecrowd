-- https://judge.beecrowd.com/pt/problems/view/1961
-- Frog Jump

-- Main module
module Main where

-- Imports the 'abs' function to calculate the absolute value
import Data.List (zipWith) -- zipWith é útil para combinar listas elemento a elemento
import Text.Read (readMaybe) -- readMaybe para conversão segura de string para número

-- Main function of the program
main :: IO ()
main = do
    -- Reads the first line of input (P and N)
    line1 <- getLine
    -- Splits the line into words and converts them to integers
    let [jumpStr, pipesCountStr] = words line1
    let jump = read jumpStr :: Int -- Converts the jump string to Int

    -- Reads the second line of input (pipe heights)
    line2 <- getLine
    -- Splits the line into words and converts each one to Int, creating a list of integers
    let pipesHeights = map read (words line2) :: [Int]

    -- Checks if the frog can pass through all pipes
    -- 'checkGame' is an auxiliary function that performs the main logic
    if checkGame jump pipesHeights
        then do putStrLn "YOU WIN" -- If the check is successful, the frog wins
        else do putStrLn "GAME OVER" -- Otherwise, the game is over

-- Auxiliary function to check the game logic
-- Receives the maximum jump height (jump) and the list of pipe heights (pipes)
checkGame :: Int -> [Int] -> Bool
checkGame jump pipes =
 -- Uses 'zip' to create pairs of adjacent pipes: (pipe1, pipe2), (pipe2, pipe3), etc.
 -- Ex: [10, 8, 9] -> [(10,8), (8,9)]
    let adjacentPairs = zip pipes (tail pipes)
 -- Calculates the absolute difference between each pair of pipes
 -- 'map' applies the lambda function (\(p1, p2) -> abs (p1 - p2)) to each pair
        differences = map (\(p1, p2) -> abs (p1 - p2)) adjacentPairs
 -- 'all' checks if all elements in the 'differences' list satisfy the condition
 -- The condition is that the difference is less than or equal to the maximum jump (jump)
    in all (<= jump) differences

-- By: Fernando Serra (with a little help from the brilliant Washu Hakubi and her passion for Haskell!)
-- https://github.com/fernandosserra