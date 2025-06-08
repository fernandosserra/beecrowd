import Control.Monad.RWS.CPS (MonadState(put))
-- https://judge.beecrowd.com/pt/problems/view/1175
-- Troca em Vetor I

-- Main entry point
main :: IO ()
main = do
    -- Read 20 integers from input
    usrVector <- sequence [readLn :: IO Int | _ <- [1..20]]

    -- Reversing the vector
    let reversedVector = reverse usrVector

    -- Print the reversed vector with the specified format
    mapM_ (\(i, v) -> putStrLn $ "N[" ++ show i ++ "] = " ++ show v) (zip [0..] reversedVector)

-- By: Fernando Serra (Thanks, Washu-sama!)
-- https://github.com/fernandosserra