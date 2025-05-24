-- https://judge.beecrowd.com/pt/problems/view/1113
-- Crescente e Decrescente

-- Main Function
main :: IO ()
main = getVs 0

-- Recursive Function
getVs :: Int -> IO ()
getVs control = do
    -- reading values
    usr_input <- getLine
    
    -- converting to Int
    let [xStr, yStr] = words usr_input
    let x = read xStr :: Int
    let y = read yStr :: Int
    
    -- testing stop condition
    if x == y
        then return ()
        else do
            
            -- testing conditions
            if x < y
                then putStrLn "Crescente"
                else putStrLn "Decrescente"
            
            -- recursive call
            getVs control


-- By Fernando Serra
-- https://github.com/fernandosserra