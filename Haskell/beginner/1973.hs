-- https://judge.beecrowd.com/pt/problems/view/1973
-- Jornada nas Estrelas

-- Imports
import Control.Monad
import qualified Data.Vector.Mutable as MVector
import qualified Data.Vector as Vector
import Data.IORef
import System.IO

main :: IO ()
main = do
    hSetBuffering stdout NoBuffering
    numEstrelas <- readLn
    input <- fmap (map read . words) getLine

    -- Criar vetores mutáveis
    -- 'sheeps' guarda o número de ovelhas em cada estrela.
    sheeps <- Vector.thaw (Vector.fromList input) :: IO (MVector.IOVector Int)
    -- 'visitadas' marca se uma estrela já foi atacada (contada) ou não.
    visitadas <- MVector.replicate numEstrelas False

    -- Referências mutáveis para o estado do programa.
    -- 'estrelasAtacadasRef' conta quantas estrelas únicas foram atacadas.
    estrelasAtacadasRef <- newIORef 0
    -- 'posAtualRef' guarda a posição atual do Stark (o carneiro viajante).
    posAtualRef <- newIORef 0

    -- Loop principal da jornada: a inteligência por trás do movimento do Stark!
    let loop = do
            pos <- readIORef posAtualRef
            -- O loop continua ENQUANTO a posição é válida.
            -- Quando 'pos' sai dos limites [0, numEstrelas-1], o loop termina.
            when (pos >= 0 && pos < numEstrelas) $ do
                ovelhas <- MVector.read sheeps pos
                
                -- Se não há ovelhas aqui, o Stark não rouba, mas continua se movendo!
                -- Esse era um dos pontos cruciais que estava causando um problema no seu loop.
                -- Ele só para de roubar na estrela, mas não de se mover.
                unless (ovelhas == 0) $ do
                    -- Se a estrela ainda não foi visitada, incrementamos o contador.
                    visitada <- MVector.read visitadas pos
                    when (not visitada) $ do
                        MVector.write visitadas pos True
                        modifyIORef' estrelasAtacadasRef (+1)

                    -- Rouba uma ovelha: ovelhas sempre diminuem, a não ser que já sejam zero.
                    MVector.write sheeps pos (ovelhas - 1)

                -- Decide o próximo movimento com base na paridade ANTES do roubo.
                -- Isso é importante e você já estava fazendo certo! Parabéns!
                let proximoPos = if ovelhas `mod` 2 == 0
                                   then pos - 1 -- Par, vai para a esquerda
                                   else pos + 1 -- Ímpar, vai para a direita
                writeIORef posAtualRef proximoPos
                
                -- Chama o próximo passo do loop.
                loop

    -- Inicia a jornada!
    loop

    -- Congela o vetor de ovelhas para poder somar de forma eficiente.
    sheepsCongeladas <- Vector.freeze sheeps
    let ovelhasRestantes = Vector.foldl' (+) 0 sheepsCongeladas

    -- Obtém o número total de estrelas atacadas.
    estrelasAtacadas <- readIORef estrelasAtacadasRef
    
    -- Imprime o resultado final. Ah, a glória da computação!
    putStrLn $ show estrelasAtacadas ++ " " ++ show ovelhasRestantes

-- By Fernando Serra
-- https://github.com/fernandosserra