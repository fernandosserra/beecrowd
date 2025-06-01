-- https://judge.beecrowd.com/pt/problems/view/1159
-- Soma de Pares Consecutivos

main :: IO ()
main = processCases

-- Recursive loop that breaks on zero
processCases :: IO ()
processCases = do
    line <- getLine
    let x = parseInput line
    if x == 0
        then return ()
        else do
            print (sumEven x)
            processCases

-- To extract an integer from input
parseInput :: String -> Int
parseInput line = read line

-- To sum 5 consecutive even numbers starting from x (adjusting if odd)
sumEven :: Int -> Int
sumEven x =
    let starting = if odd x then x + 1 else x
    in sum $ take 5 [starting, starting + 2 ..]

-- By: Fernando Serra
-- https://github.com/fernandosserra
