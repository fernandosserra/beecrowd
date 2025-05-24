-- https://judge.beecrowd.com/pt/problems/view/1149
-- Somando Inteiros Consecutivos

import Control.Monad (unless)

main :: IO ()
main = do
    -- Read input values
    input <- getLine
    let values = map read (words input) :: [Int]

    -- Extracting
    case values of
        (usrInput1:rest) -> do
            finalUsrInput2 <- ensurePositive (getValidSecondValue rest)
            let result = sum [usrInput1 .. usrInput1 + finalUsrInput2 - 1]
            print result
        [] -> putStrLn "Error: No input provided."

-- Ensure usrInput2 is positive
ensurePositive :: Maybe Int -> IO Int
ensurePositive (Just x) = return x
ensurePositive Nothing = do
    newInput <- readLn
    if newInput > 0 then return newInput else ensurePositive Nothing

-- Get the first positive number from the list or return Nothing
getValidSecondValue :: [Int] -> Maybe Int
getValidSecondValue = foldr (\x acc -> if x > 0 then Just x else acc) Nothing

-- By Fernando Serra - With a lot of help from Copilot. I'm still learning Haskell.
-- https://github.com/fernandosserra