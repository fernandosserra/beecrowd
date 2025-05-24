-- https://judge.beecrowd.com/pt/problems/view/1143
-- Quadrado e ao Cubo

-- Importing intercalate
import Data.List (intercalate)

-- Main body
main :: IO ()
main = do
    usr_value <- readLn :: IO Int
    let usr_return = ([(x, x*x, x*x*x )| x <- [1..usr_value]])
    let results = intercalate "\n" (map (\(x,y,z) -> show x ++ " " ++ show y ++ " " ++ show z) usr_return)
    putStrLn results

-- By Fernando Serra
-- https://github.com/fernandosserra