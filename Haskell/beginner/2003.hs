-- https://judge.beecrowd.com/pt/problems/view/2003
-- Domingo de Manhã

-- Imports
import System.IO (isEOF)


-- Main
main :: IO ()
main = loop
  where
    loop = do
      eof <- isEOF
      if eof
        then return ()
        else do
          line <- getLine
          let [hourStr, minuteStr] = splitOn ':' line
              hour = read hourStr :: Int
              minute = read minuteStr :: Int
              
          putStr "Atraso maximo: "
          if hour < 7 || (hour == 7 && minute == 0)
            then putStrLn "0"
            else putStrLn . show $ (hour - 7) * 60 + minute
          loop

-- Helper to Split
splitOn :: Char -> String -> [String]
splitOn delimiter = foldr (\c acc -> if c == delimiter then "" : acc else (c : head acc) : tail acc) [""]

-- By: Fernando Serra
-- https://github.com/fernandosserra