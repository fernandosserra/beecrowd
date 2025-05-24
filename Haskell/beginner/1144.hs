-- https://judge.beecrowd.com/pt/problems/view/1144
-- Sequência Lógica
main :: IO ()
main = do
    -- Reading Usr Input
    usrInput <- readLn :: IO Int

    -- Iterating and Printing
    mapM_ printResult [1..usrInput]
  where
    -- Function to do the job
    printResult i = do
        let square = i * i
        let cube = i * i * i
        putStrLn $ unwords [show i, show square, show cube]
        putStrLn $ unwords [show i, show (square + 1), show (cube + 1)]

-- By Fernando Serra
-- https://github.com/fernandosserra