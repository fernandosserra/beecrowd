-- https://judge.beecrowd.com/pt/problems/view/1151
-- Easy Fibonacci

import System.IO

-- Function to generate Fibonacci sequence
fibonacci :: Int -> [Int]
fibonacci n = take n (fibSeq 0 1)
  where
    fibSeq a b = a : fibSeq b (a + b)

main :: IO ()
main = do
    -- Requesting input
    usrInput <- readLn :: IO Int
    
    -- Testing input
    if usrInput == 0 then
        return ()
    else do
        -- Printing the Fibonacci sequence
        putStrLn $ unwords (map show (fibonacci usrInput))

-- By Fernando Serra
-- https://github.com/fernandosserra