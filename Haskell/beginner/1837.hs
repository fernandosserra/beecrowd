-- https://judge.beecrowd.com/pt/problems/view/1837
-- Prefácio

-- Main
main :: IO ()
main = do
    usrInput <- getLine
    let [dividend, divider] = map read (words usrInput) :: [Int]

    let rest = dividend `mod` divider
    let rest' = if rest < 0 then rest + abs divider else rest

    let quotient = (dividend - rest') `div` divider

    putStrLn $ show quotient ++ " " ++ show rest'


-- By: Fernando Serra
-- https://github.com/fernandosserra