-- https://judge.beecrowd.com/pt/problems/view/1065
-- Pares entre Cinco Números

-- Importing ReplicateM
import Control.Monad (replicateM)

main :: IO ()
main = do
    values <- replicateM 5 getValue
    let evenCount = length (filter even values)
    putStrLn $ show evenCount ++ " valores pares"

getValue :: IO Int
getValue = do
    input <- getLine
    let value = read input :: Int
    return value

-- By Fernando Serra
-- https://github.com/fernandosserra