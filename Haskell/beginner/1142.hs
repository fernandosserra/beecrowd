-- https://judge.beecrowd.com/pt/problems/view/1142
-- PUM

-- Main body
main :: IO ()
main = do
    usr_value <- readLn :: IO Int
    let generateTuples n = [(x, x+1, x+2) | x <- [1,5..(n*4)], x+2 <= (n*4)]
    mapM_ (\(x,y,z) -> putStrLn $ show x ++ " " ++ show y ++ " " ++ show z ++ " PUM") (generateTuples usr_value)

-- By Fernando Serra
-- https://github.com/fernandosserra