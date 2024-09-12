-- https://judge.beecrowd.com/pt/problems/view/1067
-- Números Ímpares

-- Main body
main :: IO ()
main = do
    usr_value <- readLn :: IO Int
    mapM_ print [x | x <- [1..usr_value], odd x]

-- By Fernando Serra
-- https://github.com/fernandosserra