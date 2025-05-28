-- https://judge.beecrowd.com/pt/problems/view/1155
-- Sequência S

-- Importing Printf
import Text.Printf (printf)

-- seriesSum
seriesSum :: Double
seriesSum = sum [1.0 / fromIntegral i | i <- [1 .. 100]]

-- main
main :: IO ()
main = printf "%.2f\n" seriesSum

-- By Fernando Serra
-- https://github.com/fernandosserra