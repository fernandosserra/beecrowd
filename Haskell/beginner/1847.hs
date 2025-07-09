-- https://judge.beecrowd.com/pt/problems/view/1847
-- Bem-vindos e Bem-vindas ao Inverno!

-- Main
main :: IO ()
main = do
    -- Reading the temperatures
    line <- getLine
    let [d1, d2, d3] = map read (words line) :: [Int]

    -- Getting winter mood
    putStrLn (winterMood d1 d2 d3)

winterMood :: Int -> Int -> Int -> String
winterMood d1 d2 d3
    -- Case 1: Temperature falls from d1 to d2
    | d1 > d2 =
        if d2 > d3
            then -- keeps falling
                if (d2 - d3) < (d1 - d2)
                    then ":)" -- It fell slower in the second time
                    else ":(" -- It fell fastar in the second time
            else ":)" -- Stopped falling or went up
    -- Case 2: Temperature rising from d1 to d2
    | d1 < d2 =
        if d2 < d3
            then -- keeps raising
                if (d3 - d2) < (d2 - d1)
                    then ":(" -- It went up slower the second time
                    else ":)" -- It went up faster the second time
            else ":(" -- Stopped rising or fell
    -- Case 3: Stable temperature from d1 to d2
    | d1 == d2 =
        if d2 < d3
            then ":)" -- Rise
            else ":(" -- Fall
    | otherwise = ":)" -- Stable temperature

-- By: Fernando Serra
-- https://github.com/fernandosserra