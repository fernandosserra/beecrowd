-- https://judge.beecrowd.com/pt/problems/view/1048
-- Importing printf
import Text.Printf

-- Round Double into int, then convert again into double
roundDouble :: Double -> Double
roundDouble x = fromIntegral (round x) :: Double

-- Main
main :: IO ()
main = do
    income <- readLn :: IO Double

    -- Finding bonus amount and it's percentage
    let (perc, bonus) = if income <= 400
                      then (0.15 :: Double, roundDouble (income * 0.15))
                      else if income <= 800
                      then (0.12 :: Double, roundDouble (income * 0.12))
                      else if income <= 1200
                      then (0.10 :: Double, roundDouble (income * 0.10))
                      else if income <= 2000
                      then (0.07 :: Double, roundDouble (income * 0.07))
                      else (0.04 :: Double, roundDouble (income * 0.04))

    -- Assigning a new variable to store the new salary
    let income' = income + bonus

    -- Showing results
    printf "Novo salario: %.2f\n" income'
    printf "Reajuste ganho: %.2f\n" bonus
    printf "Em percentual: %.0f %%\n" (perc * 100.0 :: Double)


-- By Fernando Serra
-- https://github.com/fernandosserra