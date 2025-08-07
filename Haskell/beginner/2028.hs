-- https://judge.beecrowd.com/pt/problems/view/2028
-- Sequência de Sequência

-- Imports
import Text.Printf (printf)
import System.IO (hIsEOF, stdin)

-- Reading entries until EOF
main :: IO ()
main = solve 1
  where
    solve :: Int -> IO ()
    solve caseNum = do
        eof <- hIsEOF stdin
        if eof
            then return ()
            else do
                nStr <- getLine
                let n = read nStr :: Int

                let sequence = generateSequence n
                let count = length sequence

                printf "Caso %d: %d " caseNum count

                if count == 1
                    then printf "numero\n"
                    else printf "numeros\n"

                putStrLn $ unwords (map show sequence)
                putStrLn ""

                solve (caseNum + 1)

-- To Generate Sequences
generateSequence :: Int -> [Int]
generateSequence n
    | n < 0     = []
    | n == 0    = [0]
    | otherwise = generateSequence (n - 1) ++ replicate n n


-- By: Fernando Serra
-- https://github.com/fernandosserra