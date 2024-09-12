-- https://judge.beecrowd.com/pt/problems/view/1066
-- Pares, Ímpares, Positivos e Negativos

-- Importing ReplicateM
import Control.Monad (replicateM)

main :: IO ()
main = do
    values <- replicateM 5 getValue
    let evenCount = length (filter even values)
    let oddCount = length (filter odd values)
    let positiveCount = length (filter (> 0) values)
    let negativeCount = length (filter (< 0) values)
    putStrLn $ show evenCount ++ " valor(es) par(es)"
    putStrLn $ show oddCount ++ " valor(es) impar(es)"
    putStrLn $ show positiveCount ++ " valor(es) positivo(s)"
    putStrLn $ show negativeCount ++ " valor(es) negativo(s)"

getValue :: IO Int
getValue = do
    input <- getLine
    let value = read input :: Int
    return value

-- By Fernando Serra
-- https://github.com/fernandosserra