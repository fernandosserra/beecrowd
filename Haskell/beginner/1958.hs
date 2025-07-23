-- https://judge.beecrowd.com/pt/problems/view/1958
-- Notação Científica

import Text.Printf (printf)

-- Helper function to ensure the correct exponent format (E+00, E-07, etc.)
formatScientificBeecrowd :: Double -> String
formatScientificBeecrowd 0.0 = "+0.0000E+00"
formatScientificBeecrowd n =
    let s = printf "%.4E" n :: String
        (mantissa, rest) = break (== 'E') s
        exponentPart = drop 1 rest -- Remove 'E'

        -- Ensure mantissa starts with '+' if positive, otherwise keep as is.
        finalMantissa = if head mantissa /= '-' then '+' : mantissa else mantissa

        -- Format exponent to always have two digits after the sign (e.g., "+00", "-07", "+12").
        -- The 'printf' already gives "+0" or "-12", etc.
        -- We need to handle cases like "+0" -> "+00", "-7" -> "-07".
        formattedExp = case exponentPart of
            [s, d] | s == '+' || s == '-' -> [s, '0', d] -- e.g., "+0" -> "+00", "-7" -> "-07"
            _ -> exponentPart -- Already two digits or more, e.g., "+12", "-10"
    in
    finalMantissa ++ "E" ++ formattedExp

main :: IO ()
main = do
    usrInput <- readLn :: IO Double
    putStrLn $ formatScientificBeecrowd usrInput
-- By: Fernando Serra
-- https://github.com/fernandosserra