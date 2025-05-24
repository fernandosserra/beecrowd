-- https://judge.beecrowd.com/pt/problems/view/1132
-- Múltiplos de 13

-- Importing ReplicateM
import Control.Monad (replicateM_)

-- Main
main = do
    -- Getting Interval
    x <- readLn
    y <- readLn
    -- Testing Interval
    if x > y
        then
            -- Testing conditions, filling acum and put it into screen
            print (sum [i | i <- [y..x], i `mod` 13 /= 0])
        else
            print (sum [i | i <- [x..y], i `mod` 13 /= 0])

-- By Fernando Serra
-- https://github.com/fernandosserra