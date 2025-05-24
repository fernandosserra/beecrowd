-- https://judge.beecrowd.com/pt/problems/view/1145
-- Sequência Lógica II

import Control.Monad (forM_)

main :: IO ()
main = do
    -- Reading user input
    input <- getLine
    let [usr_input1, usr_input2] = map read (words input) :: [Int]

    -- Function to print the sequence
    let printSequence i cnt
            | i > usr_input2 = return ()
            | cnt == usr_input1 = do
                putStrLn (unwords (map show [i - usr_input1 + 1 .. i]))
                printSequence (i + 1) 1
            | otherwise = printSequence (i + 1) (cnt + 1)

    -- Starting the sequence
    printSequence 1 1

-- By Fernando Serra
-- https://github.com/fernandosserra