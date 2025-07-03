-- https://judge.beecrowd.com/pt/problems/view/1759
-- Ho Ho Ho

-- main function
main :: IO ()
main = do
    numberOfLaughs <- readLn :: IO Int
    putStrLn $ unwords (replicate numberOfLaughs "Ho") ++ if numberOfLaughs > 0 then "!" else ""


-- By: Fernando Serra
-- https://github.com/fernandosserra