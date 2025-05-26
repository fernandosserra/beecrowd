-- https://judge.beecrowd.com/pt/problems/view/1153
-- Fatorial Simples

-- Main Function
main :: IO ()
main = do
    usr_value <- readLn :: IO Int
    let result = product [1..usr_value]
    print result

-- By Fernando Serra
-- https://github.com/fernandosserra