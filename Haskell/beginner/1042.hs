-- https://judge.beecrowd.com/pt/problems/view/1042
-- Importing printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assigning them to variables
    usr_input <- getLine
    let [a, b, c] = map read (words usr_input) :: [Double]

    -- Sorting values
    if a < b then
        if a < c then do
            printf "%.0f\n" a
            if b < c then do
                printf "%.0f\n" b
                printf "%.0f\n" c
            else do
                printf "%.0f\n" c
                printf "%.0f\n" b
        else do
            printf "%.0f\n" c
            printf "%.0f\n" a
            printf "%.0f\n" b
    else if b < c then do
        printf "%.0f\n" b
        if a < c then do
            printf "%.0f\n" a
            printf "%.0f\n" c
        else do
            printf "%.0f\n" c
            printf "%.0f\n" a
    else do 
        printf "%.0f\n" c
        if a < b then do
            printf "%.0f\n" a
            printf "%.0f\n" b
        else do
            printf "%.0f\n" b
            printf "%.0f\n" a

    do
        printf "\n%.0f\n" a
        printf "%.0f\n" b
        printf "%.0f\n" c
        
-- By Fernando Serra
-- https://github.com/fernandosserra