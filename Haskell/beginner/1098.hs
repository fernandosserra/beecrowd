-- https://judge.beecrowd.com/pt/problems/view/1098
-- Sequência IJ

-- Main Function
main :: IO ()
main = recursiveIJ 0 1 0.2 11

-- recursive
recursiveIJ :: Float -> Float -> Float -> Int -> IO ()
recursiveIJ i j aux count
  | count == 0 = return ()
  | otherwise = do
      printLine i j
      printLine i (j + 1)
      printLine i (j + 2)
      let newI = i + 0.2
      let newJ = 1 + aux
      recursiveIJ newI newJ (aux + 0.2) (count - 1)

-- Function to print each line with the appropriate formatting
printLine :: Float -> Float -> IO ()
printLine i j
  | i == 0 = putStrLn $ "I=" ++ show (round i :: Int) ++ " J=" ++ show (round j :: Int)
  | i == 1 = putStrLn $ "I=" ++ show (round i :: Int) ++ " J=" ++ show (round j :: Int)
  | i > 1.9 = putStrLn $ "I=2 J=" ++ show (round j :: Int)
  | otherwise = putStrLn $ "I=" ++ show (fromIntegral (round (i * 10)) / 10) ++ " J=" ++ show (fromIntegral (round (j * 10)) / 10)

-- By Fernando Serra
-- https://github.com/fernandosserra
-- Special thanks to GPT. AI helped me a lot.