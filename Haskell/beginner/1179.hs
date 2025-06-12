-- https://judge.beecrowd.com/pt/problems/view/1179
-- Preenchimento de Vetor IV (Versão Haskell inspirada no código C)

import Text.Printf (printf)
import Control.Monad (replicateM_, replicateM)

main :: IO ()
main = do
    -- Read the 15 integer entries from input
    entries <- replicateM 15 (readLn :: IO Int)
    -- Start processing the entries
    splitEvenAndOdds entries [] []

-- Process each entry, separating them into even and odd buffers
splitEvenAndOdds :: [Int] -> [Int] -> [Int] -> IO ()
splitEvenAndOdds [] evens odds = do
    -- At ende, print any remaining odd and even buffers
    printingBuffer "impar" odds
    printingBuffer "par" evens

splitEvenAndOdds (x:xs) evens odds
    | even x =
        let newEvens = evens ++ [x]
        in if length newEvens == 5
            then do
                printingBuffer "par" newEvens
                splitEvenAndOdds xs [] odds
            else
                splitEvenAndOdds xs newEvens odds
    | otherwise =
        let newOdds = odds ++ [x]
        in if length newOdds == 5
            then do
                printingBuffer "impar" newOdds
                splitEvenAndOdds xs evens []
            else
                splitEvenAndOdds xs evens newOdds

-- Print a named buffer with its contents
printingBuffer :: String -> [Int] -> IO ()
printingBuffer _ [] = return ()
printingBuffer nome buffer =
    mapM_ (\(i, v) -> printf "%s[%d] = %d\n" nome i v) (zip [0..length buffer - 1] buffer)

-- Por: Fernando Serra e Washu-sama 🌌
-- https://github.com/fernandosserra