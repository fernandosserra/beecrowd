-- https://judge.beecrowd.com/pt/problems/view/1864
-- Nossos Dias Nunca Voltarão

-- Main Code
main :: IO()
main = do

    usrInput <- readLn :: IO Int
    let citation = "LIFE IS NOT A PROBLEM TO BE SOLVED"

    putStrLn (take usrInput citation)
    
-- By Fernando Serra
-- https://github.com/fernandosserra    