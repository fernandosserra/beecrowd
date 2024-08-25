-- https://judge.beecrowd.com/pt/problems/view/1036
-- Importing printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    usr_input <- getLine
    let [a, b, c] = map read (words usr_input) :: [Double]

    -- Finding delta
    let delta = (b^2) - 4*a*c

    -- Finding roots
    if a == 0
        then printf "Impossivel calcular\n"
    else if delta > 0
        then let x1 = (-b + sqrt delta) / (2*a)
                 x2 = (-b - sqrt delta) / (2*a)
            in printf "R1 = %.5f\nR2 = %.5f\n" x1 x2
    else if delta == 0
        then let x1 = (-b + sqrt delta) / (2*a)
            in printf "R1 = %.5f\n" x1
    else printf "Impossivel calcular\n"

-- By Fernando Serra
-- https://github.com/fernandosserra