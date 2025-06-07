-- https://judge.beecrowd.com/pt/problems/view/1174
-- Seleção em Vetor I

-- Importing forM to iterate with IO effects
import Control.Monad (forM_)
import Numeric (showFFloat)

-- Function to format float values to one decimal place
showFFloat1 :: Float -> String
showFFloat1 x = showFFloat (Just 1) x ""


-- Main function
main :: IO ()
main = do

    -- Read the first 100 float values into a list
    usrInputs <- sequence [readLn :: IO Float | _ <- [0..99]]

    -- Iterate over the list with index and print the values that are less than or equal to 10
    forM_ (zip [0..] usrInputs) $ \(i, val) ->
        -- Checking if the value is less than or equal to 10
        if val <= 10
            -- Attention to the format of the output
            then putStrLn $ "A[" ++ show i ++ "] = " ++ showFFloat1 val
            else return ()

-- By: Fernando Serra
-- https://github.com/fernandosserra