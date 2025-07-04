-- https://judge.beecrowd.com/pt/problems/view/1789
-- A Corrida de Lesmas

-- Main module
module Main where

-- Taking Control.Exception to gets `catch`
import Control.Exception (catch, IOException)

-- To Handle EOF
handleEOF :: IOException -> IO (Maybe String)
handleEOF _ = return Nothing

-- Function to get speed level
getSpeedLevel :: Int -> Int
getSpeedLevel speed
    | speed >= 20 = 3
    | speed >= 10 = 2
    | otherwise = 1

-- To evaluate slug Teams
main :: IO ()
main = do
    teamTest


-- Recursive function to test the Slug Teams
teamTest :: IO ()
teamTest = do
    -- Try to read the slug numbers
    empSlugNumber <- fmap (fmap read) (fmap Just getLine) `catch` handleEOF
    -- According to the LLM, this is a trick to handle EOF in Haskell, i'll try to understand it

    case empSlugNumber of
        Just slugNumberStr -> do
            -- Convert
            let slugNumber = read slugNumberStr :: Int

            -- Now we read the speed line, whit the Slug Team
            teamSpeedsStr <- getLine

            -- And now we turn the string into a list of integers
            let teamSpeeds = map read . words $ teamSpeedsStr

            -- Finding max speed among them
            let maxSpeed = maximum teamSpeeds

            -- Getting the speed Level
            let speedLevel = getSpeedLevel maxSpeed

            -- Printing
            putStrLn $ show speedLevel

            -- Calling the function again
            teamTest
        Nothing -> do
            -- if our GetLine fails, there is no more team tests, so the code ends.
            return ()

-- By: Fernando Serra and Washu Hakubi! The Universe's Greatest Programmer!
-- https://github.com/fernandosserra