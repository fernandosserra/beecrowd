-- https://judge.beecrowd.com/pt/problems/view/1178
-- Preenchimento de Vetor III em Haskell

import Text.Printf (printf)

main :: IO ()
main = do
    input <- getLine
    let n = read input :: Double
        damnatioVector = take 100 (iterate (/2) n)
        indexes = [0..] :: [Int]
    mapM_ (\(i, v) -> printf "N[%d] = %.4f\n" i v) (zip indexes damnatioVector)


-- By: Fernando Serra e Washu-sama
-- https://github.com/fernandosserra