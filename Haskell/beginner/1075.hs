-- https://judge.beecrowd.com/pt/problems/view/1075
-- Resto 2

-- Main body
main :: IO ()
main = do
    usr_value <- readLn :: IO Int
    mapM_ print [x | x <- [1..10000], x `mod` usr_value == 2]

-- By Fernando Serra
-- https://github.com/fernandosserra