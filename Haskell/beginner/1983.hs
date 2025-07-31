-- https://judge.beecrowd.com/pt/problems/view/1983
-- O Escolhido

-- Imports
import Control.Monad (replicateM)

-- Main
main :: IO ()
main = do
    n <- readLn :: IO Int
    entries <- replicateM n getLine
    let students = map ((\[a,b] -> (read a :: Int, read b :: Float)) . words) entries
        (bestReg, bestGrade) = foldl (\acc@(r1, g1) (r2, g2) -> if g2 > g1 then (r2, g2) else acc) (0, 0.0) students
    if bestGrade >= 8.0
        then print bestReg
        else putStrLn "Minimum note not reached"


-- By Fernando Serra
-- https://github.com/fernandosserra