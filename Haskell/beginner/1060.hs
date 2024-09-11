-- https://judge.beecrowd.com/pt/problems/view/1060
-- Números Positivos

-- Importing ReplicateM
import Control.Monad (replicateM)

main :: IO ()
main = do
    values <- replicateM 6 getValue
    let positiveCount = length (filter (> 0) values)
    putStrLn $ show positiveCount ++ " valores positivos"

getValue :: IO Double
getValue = do
    input <- getLine
    let value = read input :: Double
    return value

-- By Fernando Serra
-- https://github.com/fernandosserra