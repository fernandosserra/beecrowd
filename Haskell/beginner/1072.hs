-- https://judge.beecrowd.com/pt/problems/view/1072
-- Intervalo 2

-- Importing useful libraries
import Control.Monad (replicateM) -- To iterate after the user enters the number of iterations

-- Function to get sequencial values
getValue :: IO Int
getValue = do
    input <- getLine
    let value = read input :: Int
    return value

-- Main
main :: IO ()
main = do        
    -- Requesting number of subsequent inputs
    usr_input <- readLn :: IO Int
    values <- replicateM usr_input getValue
    
    -- iterating
    let interval_in = length (filter (\x -> x >= 10 && x <= 20) values)
    let interval_out = length (filter (\x -> x < 10 || x > 20) values)

    -- Showing results
    putStrLn $ show interval_in ++ " in"
    putStrLn $ show interval_out ++ " out"

-- By Fernando Serra
-- https://github.com/fernandosserra