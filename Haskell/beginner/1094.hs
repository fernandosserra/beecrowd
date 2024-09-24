-- https://judge.beecrowd.com/pt/problems/view/1094
--Experiencias

-- Importing printf and replicateM
import Text.Printf (printf)
import Control.Monad (replicateM)

main :: IO ()
main = do
    -- Declaring control variables
    let rabbits = 0
    let mouses = 0
    let frogs = 0
    let specimens = 0

    -- Requesting the number of test cases from the user
    test_cases <- readLn :: IO Int

    -- Iterating through the test cases
    results <- replicateM test_cases $ do
        input <- getLine
        let [temp_qt, temp_spec] = words input
        let qt = read temp_qt :: Int
        return (qt, temp_spec)

    let (rabbits, mouses, frogs, specimens) = foldl updateCounts (0, 0, 0, 0) results

    -- Showing the results
    printf "Total: %d cobaias\n" specimens
    printf "Total de coelhos: %d\n" rabbits
    printf "Total de ratos: %d\n" mouses
    printf "Total de sapos: %d\n" frogs
    printf "Percentual de coelhos: %.2f %%\n" ((fromIntegral rabbits / fromIntegral specimens) * 100 :: Double)
    printf "Percentual de ratos: %.2f %%\n" ((fromIntegral mouses / fromIntegral specimens) * 100 :: Double)
    printf "Percentual de sapos: %.2f %%\n" ((fromIntegral frogs / fromIntegral specimens) * 100 :: Double)

updateCounts :: (Int, Int, Int, Int) -> (Int, String) -> (Int, Int, Int, Int)
updateCounts (r, m, f, s) (qt, spec)
    | spec == "C" = (r + qt, m, f, s + qt)
    | spec == "R" = (r, m + qt, f, s + qt)
    | spec == "S" = (r, m, f + qt, s + qt)
    | otherwise   = (r, m, f, s)

-- By Fernando Serra
-- https://github.com/fernandosserra