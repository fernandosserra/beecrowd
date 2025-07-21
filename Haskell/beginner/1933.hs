-- https://judge.beecrowd.com/pt/problems/view/1933
-- Tri-du

-- Main
main :: IO ()
main = do
    line <- getLine
    let [a, b] = map read (words line) :: [Int]

    if a > b then
        do let c = a
           print c
    else if b > a then
        do let c = b
           print c
    else
        print a

-- By Fernando Serra
-- https://github.com/fernandosserra