-- https://judge.beecrowd.com/pt/problems/view/1150
-- Ultrapassando Z

-- Importing Control.Monad When
import Control.Monad (when)

-- Main
main :: IO ()
main = do
    -- Getting first input
    usr_input1 <- readLn :: IO Int
    
    -- Getting second input and assuring it is greater than usr_input1
    usr_input2 <- getValidInput usr_input1
    
    -- Calculating how many iterations are necessary to reach and go beyond usr_input2
    let (counter, _) = countNumbers usr_input1 usr_input2
    
    -- Showing Results
    print counter

-- Function to get a valid second input
getValidInput :: Int -> IO Int
getValidInput usr_input1 = do
    usr_input2 <- readLn :: IO Int
    if usr_input2 > usr_input1 
        then return usr_input2
        else getValidInput usr_input1

-- Recursive function to count numbers
countNumbers :: Int -> Int -> (Int, Int)
countNumbers usr_input1 usr_input2 = go usr_input1 usr_input1 1
  where
    go sum x count
        | sum > usr_input2 = (count, sum)
        | otherwise = go (sum + (x + 1)) (x + 1) (count + 1)

-- By Fernando Serra
-- https://github.com/fernandosserra