-- https://judge.beecrowd.com/pt/problems/view/1073
-- Quadrado de pares

-- Square
square2 :: Int -> Int
square2 x = x * x

-- Main body
main :: IO ()
main = do
    usr_value <- readLn :: IO Int
    mapM_ (\x -> putStrLn (show x ++ "^2 = " ++ show (square2 x))) [x | x <- [1..usr_value], even x]

-- By Fernando Serra
-- https://github.com/fernandosserra