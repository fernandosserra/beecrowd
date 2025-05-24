-- https://judge.beecrowd.com/pt/problems/view/1050
-- Getting printf to print some awesome things
import Text.Printf

-- Main body of our magic code
main = do
    -- Requesting values and assign into variables
    ddd <- readLn :: IO Int

    -- Testing DDD to find our city
    case ddd of
        61 -> printf "Brasilia\n"
        71 -> printf "Salvador\n"
        11 -> printf "Sao Paulo\n"
        21 -> printf "Rio de Janeiro\n"
        32 -> printf "Juiz de Fora\n"
        19 -> printf "Campinas\n"
        27 -> printf "Vitoria\n"
        31 -> printf "Belo Horizonte\n"
        _  -> printf "DDD nao cadastrado\n"

-- By Fernando Serra
-- https://github.com/fernandosserra