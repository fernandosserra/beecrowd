-- https://judge.beecrowd.com/pt/problems/view/1035
-- Importing printf
import Text.Printf
import GHC.Float.RealFracMethods (roundDoubleInt)

-- Main Function
main = do
    -- Requesting values and assign into a string
    usr_input <- getLine

    -- Turning input into a useful thing
    let [a, b, c, d] = map read (words usr_input) :: [Double]

    -- Applying rules
    if b > c && d > a && (c + d) > (a + b) 
        && (c > 0) && (d > 0) 
            && ((c + d) > (a + b)) 
                && even (roundDoubleInt a)
                    then printf "Valores aceitos\n" -- If it's true, show this
                    else printf "Valores nao aceitos\n" -- If it's false, show this

-- By Fernando Serra
-- https://github.com/fernandosserra