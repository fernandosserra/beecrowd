-- https://judge.beecrowd.com/pt/problems/view/1589
-- Bob Conduite

-- Main function
main :: IO ()
main = do
    n <- readLn :: IO Int -- Reads the number of lines or cases
    mapM_ (\_ -> do
        line <- getLine
        let [r1, r2] = map read (words line) :: [Int] -- Get the wires diameters (or radii)
        print (r1 + r2) -- Returns the conductor size
        ) [1..n] -- Iterates between 1 and n

-- By Fernando Serra
-- https://github.com/fernandosserra