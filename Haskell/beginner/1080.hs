-- https://judge.beecrowd.com/pt/problems/view/1080
-- Maior e Posição

-- Importing ReplicateM
import Control.Monad (replicateM) -- To get sequencial values from user in different lines
import Data.List (elemIndex) -- To get index
import Data.Maybe (fromJust) -- To format indexes output

-- Function to get sequencial values
getValue :: IO Int
getValue = do
    input <- getLine
    let value = read input :: Int
    return value

main :: IO ()
main = do
    values <- replicateM 100 getValue
    let max = maximum values-- To get the maximum values
    let maxIndex = fromJust (elemIndex max values) + 1 -- To Get the index
    print max
    print maxIndex

-- By Fernando Serra
-- https://github.com/fernandosserra