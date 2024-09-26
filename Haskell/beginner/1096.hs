-- https://judge.beecrowd.com/pt/problems/view/1096
-- Sequência IJ 2

-- Recursive
sequenceIJ :: Int -> Int -> IO ()
sequenceIJ i j
    | i > 9 = return ()
    | otherwise = do
        putStrLn $ "I=" ++ show i ++ " J=" ++ show j
        putStrLn $ "I=" ++ show i ++ " J=" ++ show (j - 1)
        putStrLn $ "I=" ++ show i ++ " J=" ++ show (j - 2)
        sequenceIJ (i + 2) 7


main = sequenceIJ 1 7

-- By Fernando Serra
-- https://github.com/fernandosserra