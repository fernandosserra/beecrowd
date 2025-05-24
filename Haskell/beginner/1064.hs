-- https://judge.beecrowd.com/pt/problems/view/1064
-- Positivos e Média

-- Importing ReplicateM and printf
import Text.Printf
import Control.Monad (replicateM)
import GHC.Float.RealFracMethods (roundDoubleInt)

main = do
    values <- replicateM 6 getValue
    let acumulator = sum (filter (> 0) values)
    let positiveCount = length (filter (> 0) values)
    putStrLn $ show positiveCount ++ " valores positivos"
    putStrLn $ printf "%.1f" (acumulator / fromIntegral positiveCount)

getValue :: IO Double
getValue = do
    input <- getLine
    let value = read input :: Double
    return value
