-- https://judge.beecrowd.com/pt/problems/view/1172
-- Substituição em Vetor I

-- Importing Control.Monad - replicateM to iterate between inputs.
import Control.Monad (replicateM)

-- Starting main function:
main :: IO ()
main = do
    -- Getting input values
    inputValues <- replicateM 10 readLn

    -- Processing the input values
    let fixed = map (\x -> if x <= 0 then 1 else x) inputValues

    -- Printing the results
    let indexed = zip[0..] fixed
    mapM_ (\(i, v) -> putStrLn $ "X[" ++ show i ++ "] = " ++ show v) indexed


-- By: Fernando Serra
-- https://github.com/fernandosserra