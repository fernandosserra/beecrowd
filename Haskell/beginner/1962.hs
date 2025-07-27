-- https://judge.beecrowd.com/pt/problems/view/1962
-- Há Muito, Muito Tempo Atrás

-- Importing Libraries
import Text.Printf (printf)

-- Main Function
main :: IO ()
main = do
    yearsToFind <- readLn :: IO Int
    findYearOfBirth yearsToFind

-- Calculate the Year of Birth
findYearOfBirth :: Int -> IO ()
findYearOfBirth 0 = return ()
findYearOfBirth n = do
    let currentYear = 2015
    usrInput <- readLn :: IO Int
    if usrInput <= currentYear then
        if currentYear - usrInput == 0 then
            printf "1 A.C.\n"
        else printf "%d D.C.\n" (currentYear - usrInput)
    else
        printf "%d A.C.\n" ((usrInput - currentYear) + 1)

    findYearOfBirth (n - 1)

-- By Fernando Serra
-- https://github.com/fernandosserra