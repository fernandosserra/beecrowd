-- https://judge.beecrowd.com/pt/problems/view/1070
-- Seis Números Ímpares

-- Main body
main :: IO ()
main = do
    usr_value <- readLn :: IO Int
    let firstOdd = if odd usr_value then usr_value else usr_value + 1
    mapM_ print (take 6 [firstOdd, firstOdd + 2..])

-- By Fernando Serra
-- https://github.com/fernandosserra