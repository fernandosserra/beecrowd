-- https://judge.beecrowd.com/pt/problems/view/1959
-- Polígonos Regulares Simples

-- Main
main :: IO ()
main = do
    line <- getLine
    let [a, b] = map read (words line) :: [Integer]

    let c = a * b
    print c

-- By Fernando Serra
-- https://github.com/fernandosserra