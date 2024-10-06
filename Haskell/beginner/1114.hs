-- https://judge.beecrowd.com/pt/problems/view/1114
-- Senha Fixa

-- Recursive Function
getPassword :: IO ()
getPassword = do
    -- Scanning password
    usr_input <- getLine
    let usr_input' = read usr_input :: Int
    -- Recursive call
    if usr_input' == 2002
        then putStrLn "Acesso Permitido" >> return ()
        else putStrLn "Senha Invalida" >> getPassword

-- Main Function
main :: IO ()
main = getPassword

-- By Fernando Serra
-- https://github.com/fernandosserra