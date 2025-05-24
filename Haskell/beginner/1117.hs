-- https://judge.beecrowd.com/pt/problems/view/1117
-- Validação de Nota

-- Imports
import Text.Printf

-- Recursive
getGrades :: IO Double
getGrades = do
    -- Scanning grades
    usr_grade <- readLn :: IO Double
    if usr_grade < 0 || usr_grade > 10
        then printf "nota invalida\n" >> getGrades
    else return usr_grade

-- Main block
main = do
    -- Requesting grades
    grades <- sequence [getGrades, getGrades]
    -- Presenting
    let media = sum grades / 2
    printf "media = %.2f\n" media

-- By Fernando Serra
-- https://github.com/fernandosserra