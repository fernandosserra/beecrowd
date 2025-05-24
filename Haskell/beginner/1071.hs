-- https://judge.beecrowd.com/pt/problems/view/1071
-- Soma de Impares Consecutivos I

-- Main body
main :: IO ()
main = do
    -- Scanning values of interval
    usr_value1 <- readLn :: IO Int
    usr_value2 <- readLn :: IO Int

    -- Adjusting interval
    let (start, end) = if usr_value1 > usr_value2 
        then (usr_value2, usr_value1) 
        else (usr_value1, usr_value2)
    
    -- Calculating sum
    let sumOdd = sum [x | x <- [start+1..end-1], odd x]

    -- Showing results
    print sumOdd

-- By Fernando Serra
-- https://github.com/fernandosserra