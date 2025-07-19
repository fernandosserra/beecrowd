-- https://judge.beecrowd.com/pt/problems/view/1924
-- Vitória e a Indecisão

-- replicateM to ignore inputs
import Control.Monad (replicateM_)

-- Main
main :: IO()
main = do
    
    numCoursesStr <- getLine
    let numCourses = read numCoursesStr :: Int

    replicateM_ numCourses getLine
    
    putStrLn "Ciencia da Computacao"

-- By Fernando Serra
-- https://github.com/fernandosserra