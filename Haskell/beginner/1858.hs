-- https://judge.beecrowd.com/pt/problems/view/1858
-- A Resposta de Theon

-- Módulo principal, onde a genialidade reside!
module Main where

-- Importa o Data.List para ter acesso a funções úteis como minimumBy
import Data.List (minimumBy)
-- Importa o Data.Ord para a função comparing
import Data.Ord (comparing)

-- Função principal que executa o programa
main :: IO ()
main = do
    -- Leia o número de pessoas (N)
    -- Não é estritamente necessário para este problema específico,
    -- mas vamos ler para manter a simetria com o código C.
    _ <- getLine -- Usamos '_' porque não precisamos do valor de N

    -- Leia a linha de palpites como uma string
    line <- getLine

    -- Converte a string de palpites em uma lista de inteiros
    -- 'words' divide a string em palavras (separadas por espaço)
    -- 'map read' converte cada palavra em um Int
    let guesses = map read (words line) :: [Int]

    -- Emparelha cada palpite com sua posição (começando do 1, como no problema Beecrowd)
    -- zip [1..] guesses cria pares como (1, palpite1), (2, palpite2), etc.
    let indexedGuesses = zip [1..] guesses

    -- Encontra o par (índice, palpite) onde o palpite é o menor.
    -- 'minimumBy' requer uma função de comparação.
    -- 'comparing snd' cria um comparador que olha apenas para o segundo elemento do par (o palpite).
    let (minIndex, _) = minimumBy (comparing snd) indexedGuesses

    -- Imprime o índice do Theon com o menor palpite
    print minIndex

-- By: Fernando Serra (Logic, Comments by Washu)
-- https://github.com/fernandosserra