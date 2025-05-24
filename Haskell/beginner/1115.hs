-- https://judge.beecrowd.com/pt/problems/view/1115
-- Quadrants

-- Recursive Function
getQuadrant :: IO ()
getQuadrant = do
    -- Scanning coordinates
    usr_input <- getLine
    let [x, y] = map read (words usr_input) :: [Int]

    -- Recursive call
    if x == 0 || y == 0
        then return ()
    else if x > 0 && y > 0
        then putStrLn "primeiro" >> getQuadrant
    else if x < 0 && y > 0
        then putStrLn "segundo" >> getQuadrant
    else if x < 0 && y < 0
        then putStrLn "terceiro" >> getQuadrant
    else if x > 0 && y < 0
        then putStrLn "quarto" >> getQuadrant
    else
        getQuadrant

-- Main Function
main :: IO ()
main = getQuadrant

-- By Fernando Serra
-- https://github.com/fernandosserra