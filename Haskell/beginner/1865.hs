-- https://judge.beecrowd.com/pt/problems/view/1865
-- Mjölnir

-- Heroes Input
readHeroInput :: IO (String, Int)
readHeroInput = do
    line <- getLine
    let parts = words line
    let name = head parts
    let strength = read (last parts) :: Int
    return (name, strength)

-- Main
main :: IO()
main = do
    
    trialTimes <- readLn :: IO Int
    heroesTrial trialTimes

-- Recursive Function to process trials
heroesTrial :: Int -> IO ()
heroesTrial 0 = return ()
heroesTrial n = do

    (heroName, heroStrength) <- readHeroInput

    if heroName == "Thor" && heroStrength >= 1
        then putStrLn "Y"
        else putStrLn "N"
    
    heroesTrial (n - 1)

-- By Fernando Serra
-- https://github.com/fernandosserra