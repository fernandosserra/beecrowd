-- Numeração Romana para Números de Página
-- https://judge.beecrowd.com/pt/problems/view/1960

import System.IO
import Data.List (dropWhile, head)


-- Decimal to Roman conversion table
decimalToRoman :: [(Int, String)]
decimalToRoman = [ (1000, "M"), (900, "CM"), (500, "D"), (400, "CD")
                 , (100, "C"), (90, "XC"), (50, "L"), (40, "XL")
                 , (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I") ]

-- Function that converts an integer to a Roman numeral
converter :: Int -> String
converter 0 = ""
converter n = roman ++ converter (n - value)
  where
    (value, roman) = head $ dropWhile (\(v, _) -> v > n) decimalToRoman

-- Main function
main :: IO ()
main = do
    input <- getLine
    let num = read input :: Int
    putStrLn $ converter num


-- By: Fernando Serra - Thanks to Malbolgee
-- https://github.com/fernandosserra