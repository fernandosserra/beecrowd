-- https://judge.beecrowd.com/pt/problems/view/1984
-- O Enigma da Pronalândia

-- Imports
import Data.Char (isSpace) -- Não esqueça de importar isso!

-- Função auxiliar para remover espaços do início e do fim da string
trim :: String -> String
trim = f . f
  where f = reverse . dropWhile isSpace . reverse . dropWhile isSpace
-- Nota de Washu: A função 'f . f' significa aplicar 'f' duas vezes.
-- 'f' é 'reverter, tirar espaços do início'. Aplicar duas vezes
-- garante que os espaços sejam removidos do início e do fim da string original.

main :: IO ()
main = do
  pronMessage <- getLine
  -- Inverte a mensagem, depois "trimma" (remove espaços das bordas)
  -- e adiciona explicitamente a quebra de linha.
  putStr ((trim . reverse) pronMessage ++ "\n")

-- By: Fernando Serra
-- https://github.com/fernandosserra