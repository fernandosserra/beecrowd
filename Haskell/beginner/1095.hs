-- https://judge.beecrowd.com/pt/problems/view/1095
-- Sequência IJ 1


-- Recursive
sequenceIJ :: Int -> Int -> IO ()
sequenceIJ i j
    | j < 0 = return ()
    | otherwise = do
        putStrLn $ "I=" ++ show i ++ " J=" ++ show j
        sequenceIJ (i + 3) (j - 5)

-- Main function

main = sequenceIJ 1 60

-- By Fernando Serra
-- https://github.com/fernandosserra