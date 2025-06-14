-- https://judge.beecrowd.com/pt/problems/view/1180
-- Menor e Posição

-- Imports
import Control.Monad (replicateM)
import Data.List (minimumBy)
import Data.Ord (comparing)

main :: IO ()
main = do
    --Read array size
    arraySize <- readLn :: IO Int

    -- Reads n array values
    -- Reading Values in a line
    valuesLine <- getLine
    let values = map read (words valuesLine) :: [Int]

    -- Finds the minimum value and its position
    let indexed = zip [0..] values  -- [(posição, valor)]
        (pos, minVal) = minimumBy (comparing snd) indexed

    -- Print results
    putStrLn $ "Menor valor: " ++ show minVal
    putStrLn $ "Posicao: " ++ show pos
    
-- By: Fernando Serra
-- https://github.com/fernandosserra