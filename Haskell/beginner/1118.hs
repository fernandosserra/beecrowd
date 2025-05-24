-- https://judge.beecrowd.com.br/judge/en/problems/view/1118
-- Várias notas com validação


-- Importing printf
import Text.Printf

-- Função para obter uma nota válida
getGrade :: IO Double
getGrade = do
    grade <- readLn
    if grade < 0 || grade > 10
        then do
            printf "nota invalida\n"
            getGrade
        else return grade

-- Função para verificar se um novo cálculo é necessário
getRepeat :: IO Bool
getRepeat = do
    printf "novo calculo (1-sim 2-nao)\n"
    decision <- readLn
    case decision of
        1 -> return True
        2 -> return False
        _ -> do
            getRepeat

-- Bloco principal
main :: IO ()
main = loop
  where
    loop = do
        -- Solicitando notas
        grade1 <- getGrade
        grade2 <- getGrade
        -- Calculando e apresentando a média
        let media = (grade1 + grade2) / 2
        printf "media = %.2f\n" media
        shouldRepeat <- getRepeat
        if shouldRepeat
            then loop
            else return ()


-- By Fernando Serra
-- In this case i've used a little help fro ChatGPT to learn Haskell and understand some indentations.
-- https://github.com/fernandosserra
