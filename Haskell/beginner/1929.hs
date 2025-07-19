-- https://judge.beecrowd.com/pt/problems/view/1929
-- Triângulo

-- Main
main :: IO ()
main = do
    line <- getLine
    let [a, b, c, d] = map read (words line) :: [Int]

    if (a + b) > c && (a + c) > b && (b + c) > a ||
       (a + b) > d && (a + d) > b && (b + d) > a ||
       (a + c) > d && (a + d) > c && (c + d) > a ||
       (b + c) > d && (b + d) > c && (c + d) > b
        then putStrLn "S"
        else putStrLn "N"

-- By Fernando Serra
-- https://github.com/fernandosserra