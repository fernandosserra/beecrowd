-- https://judge.beecrowd.com/pt/problems/view/1051
-- Imports
import Text.Printf

-- Main function
main = do
    -- Requesting salary value and assign into a variable named salary
    salary <- readLn :: IO Double

    -- Finding the amount of tax and presenting it
    case salary of
        salary | salary <= 2000.00 -> printf "Isento\n"
        salary | salary >= 2000.1 && salary <= 3000.00
            -> printf "R$ %.2f\n" ((salary - 2000.00) * 0.08)
        salary | salary >= 3000.01 && salary <= 4500.00
            -> printf "R$ %.2f\n" ((1000.00 * 0.08) + ((salary - 3000.00) * 0.18))
        _ -> printf "R$ %.2f\n" ((1000.00 * 0.08) + (1500.00 * 0.18) + ((salary - 4500.00) * 0.28))

-- By Fernando Serra
-- https://github.com/fernandosserra