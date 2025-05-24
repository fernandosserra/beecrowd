-- https://judge.beecrowd.com/pt/problems/view/1074
-- Par ou Ímpar

-- Importing ReplicateM
import Control.Monad (replicateM_)

-- Main
main = do
    user_interations <- readLn

-- Iterating
    replicateM_ user_interations $ do
        usr_input <- readLn
        putStrLn $ if usr_input > 0
            then if even usr_input
                then "EVEN POSITIVE"
                else "ODD POSITIVE"
            else if usr_input < 0
                then if even usr_input
                    then "EVEN NEGATIVE"
                    else "ODD NEGATIVE"
                else "NULL"

-- By Fernando Serra
-- https://github.com/fernandosserra