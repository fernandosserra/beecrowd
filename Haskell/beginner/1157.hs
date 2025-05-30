-- https://judge.beecrowd.com/pt/problems/view/1153
-- Fatorial Simples

-- Getting System
import System.IO

-- Main Function
main :: IO ()
main = do

    -- Getting user input
    usr_input <- readLn :: IO Int

    -- Printing results
    mapM_ print [i | i <- [1.. usr_input], usr_input `mod` i == 0]

-- By Fernando Serra
-- https://github.com/fernandosserra