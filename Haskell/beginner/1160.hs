-- https://www.beecrowd.com.br/judge/pt/problems/view/1160
-- Crescimento Populacional

-- Imports
import Text.Printf (printf)
import Data.List (unfoldr) -- Used to SolveCase, but not essencial.

-- Main Function
main :: IO ()
main = do
    numTestCasesStr <- getLine
    let numTestCases = read numTestCasesStr :: Int
    mapM_ solveCase (replicate numTestCases ()) -- Iteration in  'numTestCases' calling 'solveCase'

-- Função que resolve um único caso de teste.
solveCase :: () -> IO ()
solveCase _ = do
    line <- getLine
    let [paStr, pbStr, gaStr, gbStr] = words line
        populationA = read paStr :: Int
        populationB = read pbStr :: Int
        growthA = read gaStr :: Double
        growthB = read gbStr :: Double

    let years = calculateYears populationA populationB growthA growthB 0

    if years > 100
        then printf "Mais de 1 seculo.\n"
        else printf "%d anos.\n" years

-- Recursive function to get necessary years
calculateYears :: Int -> Int -> Double -> Double -> Int -> Int
calculateYears pa pb ga gb years
    | years > 100 = years -- If the number of years is greater than 100, return the current number of years.
    | pa > pb = years     -- If the population of A is greater than B, return the current number of years.
    | otherwise =
        let
            newPA = pa + floor ((fromIntegral pa * ga) / 100.0)
            newPB = pb + floor ((fromIntegral pb * gb) / 100.0)
        in
            calculateYears newPA newPB ga gb (years + 1)

-- By: Fernando Serra
-- https://github.com/fernandosserra