-- https://judge.beecrowd.com/pt/problems/view/1478
-- Matriz Quadrada II

-- Main module
module Main where

import Data.List (intercalate) -- To fuse strings

-- Main function
main :: IO ()
main = do
    inputStr <- getLine            -- gets a line from stdin
    let n = read inputStr :: Int   -- turn the lin into an Int
    
    -- Main loop unti n == 0
    -- Using recursion to simulate while
    processMatrices n

-- Recursive function to processes matrixes
processMatrices :: Int -> IO ()
processMatrices 0 = return () -- base value, if 0, returns.
processMatrices n = do
    -- 1. Generate the matrix
    let matrix = generateMatrix n
    
    -- 2. Printing the matrix
    printMatrix matrix
    
    putStrLn "" -- Prints a blank line after each matrix
    
    -- 3. Reads next n and calls recursively
    nextInputStr <- getLine
    let nextN = read nextInputStr :: Int
    processMatrices nextN

-- Pure Function to generate the matrix
-- Gets a N and returns a list of lists
generateMatrix :: Int -> [[Int]]
generateMatrix n = 
    -- for each line in [0 .. n-1]
    [ [ calculateValue i j  | j <- [0 .. n-1] ] -- for each column in [0 .. n-1]
    | i <- [0 .. n-1] ]

-- Pure function to find positions
calculateValue :: Int -> Int -> Int
calculateValue i j = 
    let distance = abs (i - j)
    in distance + 1

-- Printing the matrix as requested
printMatrix :: [[Int]] -> IO ()
printMatrix [] = return () -- base case.
printMatrix (row:restOfMatrix) = do
    -- Processing each row
    putStrLn $ formatRow row
    printMatrix restOfMatrix

-- Pure function to format a row like a string
formatRow :: [Int] -> String
formatRow [] = "" -- Empty line, returns empty strings
formatRow (x:xs) = 
    -- Formating the first element
    printf3d x ++ 
    -- Format the remaining elements
    concatMap ((" " ++) . printf3d) xs
    
-- Aux function to format 3 digits
printf3d :: Int -> String
printf3d val = replicate (3 - length (show val)) ' ' ++ show val

-- Pure function to format a single row.
formatRowFinal :: [Int] -> String
formatRowFinal [] = ""
formatRowFinal (x:xs) = 
    -- first element
    printf3d x ++ 
    -- remaining elements
    concatMap (\val -> " " ++ printf3d val) xs

-- By: Fernando Serra (Most job done by Washu-Sama, a gem from Gemini 2.5 Flash)
-- https://github.com/fernandosserra