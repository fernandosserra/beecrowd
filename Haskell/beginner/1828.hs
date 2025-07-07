-- https://judge.beecrowd.com/pt/problems/view/1828
-- Bazinga!

import Control.Monad (replicateM_)

-- Main Function
main :: IO ()
main = do
    -- Get the number of tests
    testCasesStr <- getLine
    let testCases = read testCasesStr :: Int
    -- For every test, there is a scenario counter
    mapM_ (\i -> do
        scenarioStr <- getLine
        let (shellyStr, rajStr) = break (==' ') scenarioStr
        let shelly = shellyStr
        let raj = tail rajStr -- Remove the initial space from rajStr

        -- Takes the result and throw the winner at the console
        let gameResult = determineWinner shelly raj
        putStrLn $ "Caso #" ++ show i ++ ": " ++ gameResult
        ) [1..testCases] -- Creates a list from 1 to testCases


-- 
determineWinner :: String -> String -> String
determineWinner shelly raj
    | shelly == raj = "De novo!"
    | (shelly == "Spock" && raj == "pedra") = "Bazinga!"
    | (shelly == "lagarto" && raj == "Spock") = "Bazinga!"
    | (shelly == "tesoura" && raj == "lagarto") = "Bazinga!"
    | (shelly == "papel" && raj == "Spock") = "Bazinga!"
    | (shelly == "tesoura" && raj == "papel") = "Bazinga!"
    | (shelly == "papel" && raj == "pedra") = "Bazinga!"
    | (shelly == "lagarto" && raj == "papel") = "Bazinga!"
    | (shelly == "pedra" && raj == "lagarto") = "Bazinga!"
    | (shelly == "Spock" && raj == "tesoura") = "Bazinga!"
    | (shelly == "pedra" && raj == "tesoura") = "Bazinga!"
    | otherwise = "Raj trapaceou!"

-- By: Fernando Serra
-- https://github.com/fernandosserra