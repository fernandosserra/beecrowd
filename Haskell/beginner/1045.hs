import Text.Printf

-- Função para ordenar os valores em ordem decrescente
swap :: (Ord a) => a -> a -> (a, a)
swap x y = if x > y then (x, y) else (y, x)

-- Função para ordenar os três lados do triângulo
sort3 :: (Ord a) => a -> a -> a -> (a, a, a)
sort3 x y z = let (a, b) = swap x y
                  (b', c) = swap b z
                  (a', b'') = swap a b'
              in (a', b'', c)

-- Main
main :: IO ()
main = do
    -- Solicitando valores e atribuindo às variáveis
    usr_input <- getLine
    let [a, b, c] = map read (words usr_input) :: [Double]

    -- Ordenando os lados em ordem decrescente
    let (a'', b'', c'') = sort3 a b c

    -- Verificando o tipo de triângulo
    if a'' >= b'' + c''
        then printf "NAO FORMA TRIANGULO\n"
        else do
            if a''^2 == b''^2 + c''^2
                then printf "TRIANGULO RETANGULO\n"
                else if a''^2 > b''^2 + c''^2
                    then printf "TRIANGULO OBTUSANGULO\n"
                    else printf "TRIANGULO ACUTANGULO\n"

    if a'' == b'' && b'' == c''
        then printf "TRIANGULO EQUILATERO\n"
        else if a'' == b'' || b'' == c'' || a'' == c''
            then printf "TRIANGULO ISOSCELES\n"
    else
        printf "...\n"

-- By Fernando Serra
-- https://github.com/fernandosserra