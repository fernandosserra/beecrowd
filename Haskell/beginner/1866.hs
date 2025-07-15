-- https://judge.beecrowd.com/pt/problems/view/1866
-- Conta

-- Main
main :: IO()
main = do

    usrCases <- readLn :: IO Int
    mapM_ (\_ -> do
        usrInput <- readLn :: IO Int
        if even usrInput
            then print 0
            else print 1
        ) [1..usrCases] -- Iterates between 1 and n

-- By Fernando Serra
-- https://github.com/fernandosserra