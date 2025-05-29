-- https://judge.beecrowd.com/pt/problems/view/1156
-- Sequência S II

-- Importing Printf
import Text.Printf (printf)

-- progressiveFractions
progressiveFractions :: Double
progressiveFractions = sum $ zipWith (/) [fromIntegral i | i <- [1,3 .. 39]] [2.0^j | j <- [0..19]]

-- main
main :: IO ()
main = printf "%.2f\n" progressiveFractions

-- By Fernando Serra
-- https://github.com/fernandosserra