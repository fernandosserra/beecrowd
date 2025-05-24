-- https://judge.beecrowd.com/pt/problems/view/1134
-- Tipos de Combustível

-- Imports
import Text.Printf

-- Function to iterate until user enters a specific value
getValue :: IO Int
getValue = do
    input <- getLine
    let value = read input :: Int
    if value >= 1 && value <= 4 then return value else getValue

-- Main loop
mainLoop :: Int -> Int -> Int -> IO ()
mainLoop alchool gasoline diesel = do
    values <- getValue
    case values of
        1 -> mainLoop (alchool + 1) gasoline diesel
        2 -> mainLoop alchool (gasoline + 1) diesel
        3 -> mainLoop alchool gasoline (diesel + 1)
        4 -> do
            printf "MUITO OBRIGADO\n"
            printf "Alcool: %d\n" alchool
            printf "Gasolina: %d\n" gasoline
            printf "Diesel: %d\n" diesel

-- Main
main :: IO ()
main = mainLoop 0 0 0

-- By Fernando Serra
-- https://github.com/fernandosserra