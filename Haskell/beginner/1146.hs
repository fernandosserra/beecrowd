-- https://judge.beecrowd.com/pt/problems/view/1146
-- Sequências Crescentes

-- Imports
import System.IO (isEOF)

-- Function
printNumbers :: Int -> IO ()
printNumbers n = putStrLn $ unwords [show x | x <- [1..n]]

-- Main Body and Function calling
main :: IO ()
main = do
    contents <- getContents
    let numbers = map read $ lines contents :: [Int]
    mapM_ (\n -> if n /= 0 then printNumbers n else return ()) numbers

-- By Fernando Serra
-- https://github.com/fernandosserra