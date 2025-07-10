-- https://judge.beecrowd.com/pt/problems/view/1848
-- Corvo Contador

import Data.List (isPrefixOf) -- To use 'isPrefixOf' for "caw caw" check
import System.IO (isEOF)    -- To check for end of input

-- | bValue: Converts a blink character to its binary value (0 or 1)
-- | '-' becomes 0, '*' becomes 1.
bValue :: Char -> Int
bValue '-' = 0
bValue '*' = 1
bValue _   = 0 -- Default for any other character, just for safety

-- | convertBlinks: Converts a string of blinks into a decimal number.
-- | Uses foldl to accumulate the value, multiplying by 2 and adding the next bit.
convertBlinks :: String -> Int
convertBlinks = foldl (\acc blinkChar -> acc * 2 + bValue blinkChar) 0

-- | main: The program's main function.
-- | Reads lines, processes blinks, and prints the results.
main :: IO ()
main = loop 0
  where
    -- loop: Recursive function to process inputs.
    -- 'acc' here is the accumulated sum of blinks.
    loop :: Int -> IO ()
    loop acc = do
        eof <- isEOF -- Checks if we reached the end of the file.
        if eof
            then return () -- If yes, ends the recursion.
            else do
                line <- getLine -- Reads a line from input.
                if "caw caw" `isPrefixOf` line -- We check if the line starts with "caw caw"
                                                -- (There might be a '\r' or '\n' at the end, so isPrefixOf is more robust)
                    then do
                        print acc      -- Prints the accumulated sum.
                        loop 0         -- Resets the sum for the next cycle of blinks.
                    else do
                        let value = convertBlinks line -- Converts the blink line into a value.
                        loop (acc + value)             -- Adds the value to the sum and calls the loop again.

-- By: Fernando Serra (most of the job done by Washu)
-- https://github.com/fernandosserra