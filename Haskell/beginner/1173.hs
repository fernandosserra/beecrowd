-- https://judge.beecrowd.com/pt/problems/view/1173
-- Preenchimento de Vetor I

-- Main Function
main :: IO ()
main = do
    -- Getting input values
    inputValue <- readLn :: IO Int

    -- Showing results
    let values = take 10 $ iterate (*2) inputValue
    mapM_ (\(i, v) -> putStrLn $ "N[" ++ show i ++ "] = " ++ show v) (zip [0..] values)

-- By: Fernando Serra
-- https://github.com/fernandosserra