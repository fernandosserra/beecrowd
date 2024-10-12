-- https://judge.beecrowd.com.br/judge/pt/problems/view/1131
-- Grenais

-- Importing printf
import Text.Printf

-- Let's start with a function to get the goals and return 1 case Inter is the winner, 
-- 2 case Grêmio is the winner, and 0 in case of a draw.
getGoals :: IO Int
getGoals = do
    goals <- getLine
    let [inter, gremio] = map read (words goals) :: [Int]
    return $ if inter > gremio then 1 else if gremio > inter then 2 else 0

-- This function will ask the user if he wants a new match
newMatch :: IO Bool
newMatch = do
    -- Showing a visual help to the user
    putStrLn "Novo grenal (1-sim 2-nao)"
    input <- getLine
    return (read input == 1)

-- Function that will control the games and store results
playMatches :: Int -> Int -> Int -> IO ()
playMatches interWins gremioWins empates = do
    -- Calling getGoals
    result <- getGoals
    -- Updating Counters
    let (newInterWins, newGremioWins, newEmpates) = case result of
            1 -> (interWins + 1, gremioWins, empates)
            2 -> (interWins, gremioWins + 1, empates)
            0 -> (interWins, gremioWins, empates + 1)
    
    -- Asking for a new match
    continue <- newMatch
    if continue
        then playMatches newInterWins newGremioWins newEmpates -- Starting a new match
        else do
            -- Evaluating results
            let totalMatches = newInterWins + newGremioWins + newEmpates
            -- Showing results
            printf "%d grenais\n" totalMatches
            printf "Inter:%d\n" newInterWins
            printf "Gremio:%d\n" newGremioWins
            printf "Empates:%d\n" newEmpates
            -- looking for the winner
            if newInterWins > newGremioWins
                then printf "Inter venceu mais\n"
            else if newGremioWins > newInterWins
                then printf "Gremio venceu mais\n"
            else printf "Nao houve vencedor\n"

-- Main execution block
main :: IO ()
main = playMatches 0 0 0 -- Starting counters and calling the function.

-- By Fernando Serra with a good help of the LLM ChatGPT
-- https://github.com/fernandosserra