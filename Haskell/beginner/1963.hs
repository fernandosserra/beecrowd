-- https://judge.beecrowd.com/pt/problems/view/1963
-- O Filme

-- Importing Printf
import Text.Printf (printf)

main :: IO ()
main = do
    line <- getLine
    let [oldPrice, newPrice] = map read (words line) :: [Float]

    if oldPrice == 0 || newPrice == 0
        then printf "0.00%%\n"
    else do
        let increaseAmount = (newPrice - oldPrice) / oldPrice :: Float
        printf "%.2f%%\n" (increaseAmount * 100.0)

-- By Fernando Serra
-- https://github.com/fernandosserra