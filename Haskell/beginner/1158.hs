-- https://judge.beecrowd.com/pt/problems/view/1158
-- Soma de Ímpares Consecutivos III

main :: IO ()
main = do
    -- Getting number of cases
    n <- readLn
    -- Start processing cases
    processCases n

-- Recursive function to process n cases one by one
processCases :: Int -> IO ()
processCases 0 = return ()
processCases n = do
    -- Reading a line and processing it
    line <- getLine
    let result = sumOdd (parseInput line)
    print result
    -- Continue with remaining cases
    processCases (n - 1)

-- To split a line into two integers
parseInput :: String -> (Int, Int)
parseInput line =
    let [x, y] = map read (words line)
    in (x, y)

-- To sum consecutive odd numbers
sumOdd :: (Int, Int) -> Int
sumOdd (x, y) =
    let starting = if even x then x + 1 else x
    in sum $ take y [starting, starting + 2 ..]

-- By: Fernando Serra
-- https://github.com/fernandosserra