-- https://judge.beecrowd.com/pt/problems/view/1930
-- Tomadas

-- Main
main :: IO ()
main = do
    line <- getLine
       
    let [r1, r2, r3, r4] = map read (words line) :: [Int]

    let totalOutput = (r1 + r2 + r3 + r4 ) - 3
    
    print totalOutput

-- By Fernando Serra
-- https://github.com/fernandosserra