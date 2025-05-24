-- https://judge.beecrowd.com/pt/problems/view/1059
-- Números pares

-- Main body
main :: IO ()
main = mapM_ print [x | x <- [1..100], even x]

-- By Fernando Serra
-- https://github.com/fernandosserra