-- https://judge.beecrowd.com/pt/problems/view/1101
-- Sequência de Números e Soma

-- Imports
import Control.Monad (unless)

-- Main function
main :: IO ()
main = loop

-- loop function
loop :: IO ()
loop = do
    -- Taking values
    input <- getLine
    let [usr_input1, usr_input2] = map read (words input) :: [Int]
    
    -- Stop condition
    unless (usr_input1 <= 0 || usr_input2 <= 0) $ do
        let (minVal, maxVal) = if usr_input1 > usr_input2
                               then (usr_input2, usr_input1)
                               else (usr_input1, usr_input2)
            seqNums = [minVal..maxVal]
            sumSeq = sum seqNums
        
        -- Printing numbers an sum,
        putStrLn $ unwords (map show seqNums) ++ " Sum=" ++ show sumSeq
        
        -- Looping again
        loop

-- By Fernando Serra
-- https://github.com/fernandosserra