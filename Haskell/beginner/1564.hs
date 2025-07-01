-- https://judge.beecrowd.com/pt/problems/view/1564
-- Vai ter copa?

-- Importing printf
import Text.Printf (printf)
import Control.Exception (try, SomeException(..))
import System.IO (isEOF) -- To check EOF

-- Aux. Function to generate Strings
copa :: Int -> String
copa usrInput
    | usrInput == 0 = "vai ter copa!"
    | otherwise     = "vai ter duas!"

-- Main loop
loop :: IO ()
loop = do
    endOfFile <- isEOF -- Checking if the code reached EOF
    if endOfFile
        then return () -- If yes, turn the code off.
        else do
            -- Trying to read a number
            result <- try (readLn :: IO Int) :: IO (Either SomeException Int)
            case result of
                Left _ -> return () -- Another guard to find EOF
                Right usrInput -> do
                    printf "%s\n" (copa usrInput)
                    loop -- Looping again

-- Main function
main :: IO ()
main = do
    loop

-- By: Fernando Serra
-- https://github.com/fernandosserra