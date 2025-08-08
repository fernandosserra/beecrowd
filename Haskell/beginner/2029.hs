-- https://judge.beecrowd.com/pt/problems/view/2029
-- Reservatóio de Mel

-- Módulo principal
import System.IO
import Text.Printf -- Importa a biblioteca de formatação de texto

main :: IO ()
main = do
    processarEntradas

-- Função que processa as entradas em pares de linhas
processarEntradas :: IO ()
processarEntradas = do
    isEOF <- hIsEOF stdin
    if isEOF
        then return ()
        else do
            volStr <- getLine
            diaStr <- getLine
            let volume = read volStr :: Double
            let diameter = read diaStr :: Double
            let saida = calcularSaida volume diameter
            putStrLn saida
            processarEntradas

-- Função que encapsula a lógica de cálculo e formatação
calcularSaida :: Double -> Double -> String
calcularSaida volume diameter =
    let
        pi = 3.14
        radius = diameter / 2
        areaSize = pi * radius * radius
        height = volume / areaSize
    in
    -- Usamos 'printf' para garantir exatamente 2 casas decimais, incluindo os zeros
    "ALTURA = " ++ printf "%.2f" height ++ "\n" ++ "AREA = " ++ printf "%.2f" areaSize

-- Esta função não é mais necessária, pois 'printf' faz a formatação por nós!
round2Decimals :: Double -> Double
round2Decimals x = fromIntegral (round (x * 100)) / 100

-- By: Fernando Serra & Washu Hakubi
-- https://github.com/fernandosserra