-- https://judge.beecrowd.com/pt/problems/view/1957
-- Converter para Hexadecimal

-- Importing Printf to use UpperCase
import Text.Printf (printf)

-- Function to Show Hex in UpperCase
intTextToHexUpper :: Int -> String
intTextToHexUpper = printf "%X"

-- Main
main :: IO ()
main = do
    usrInput <- readLn :: IO Int
    let hexString = intTextToHexUpper usrInput
    putStrLn hexString

-- By: Fernando Serra
-- https://github.com/fernandosserra