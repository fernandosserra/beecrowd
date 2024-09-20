-- https://judge.beecrowd.com/pt/problems/view/1078
-- Tabuada

-- Main Function
main :: IO ()
main = do
    -- Starting code and scanning input
    user_input <- readLn :: IO Int
    -- Iterating
    mapM_ (printMultiplication user_input) [1..10]

-- Function to print multiplication
printMultiplication :: Int -> Int -> IO ()
printMultiplication user_input i = 
    putStrLn $ show i ++ " x " ++ show user_input ++ " = " ++ show (user_input * i)

-- By Fernando Serra
-- https://github.com/fernandosserra