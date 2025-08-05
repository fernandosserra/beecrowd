-- https://judge.beecrowd.com/pt/problems/view/2006
-- Identificando o Chá

-- Imports
import Control.Monad (replicateM)

main = do
    teaType <- readLn :: IO Int
    guessesStr <- getLine
    let guesses = map (read :: String -> Int) (words guessesStr)
    let rightGuesses = length $ filter (== teaType) guesses
    print rightGuesses

-- By: Fernando Serra
-- https://github.com/fernandosserra