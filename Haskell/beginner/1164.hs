-- https://judge.beecrowd.com/pt/problems/view/1164
-- Número Perfeito em Haskell

-- Importing replicateM and readMaybe
import Control.Monad (replicateM_)
import Text.Read (readMaybe)

-- Checking if a number is perfect
isPerfect :: Int -> Bool
isPerfect n = sum [x | x <- [1..n-1], n `mod` x == 0] == n

-- Read a number and check his perfection
processOneCase :: IO ()
processOneCase = do
    input <- getLine
    case readMaybe input of
        Just n ->
            if isPerfect n
                then putStrLn $ show n ++ " eh perfeito"
                else putStrLn $ show n ++ " nao eh perfeito"
        Nothing -> putStrLn "Entrada inválida!"

-- Main function
main :: IO ()
main = do
    input <- getLine
    case readMaybe input of
        Just t -> replicateM_ t processOneCase
        Nothing -> putStrLn "Número de casos inválido!"

-- By Fernando Serra
-- https://github.com/fernandosserra