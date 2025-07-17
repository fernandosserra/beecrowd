-- https://judge.beecrowd.com/pt/problems/view/1914
-- De Quem é a Vez?


import Control.Monad (replicateM)

determineWinnerRound :: IO String
determineWinnerRound = do
    line1 <- getLine
    let [playerOneName, playerOneOpt, playerTwoName, _] = words line1

    line2 <- getLine
    let [playerOneValueStr, playerTwoValueStr] = words line2
    let playerOneValue = read playerOneValueStr :: Int
    let playerTwoValue = read playerTwoValueStr :: Int

    let sumValues = playerOneValue + playerTwoValue

    if (playerOneOpt == "PAR" && even sumValues) || (playerOneOpt == "IMPAR" && odd sumValues)
        then return playerOneName
        else return playerTwoName

-- Main
main :: IO()
main = do
    testCases <- readLn :: IO Int 
    
    winners <- replicateM testCases determineWinnerRound

    mapM_ putStrLn winners

-- By Fernando Serra
-- https://github.com/fernandosserra
