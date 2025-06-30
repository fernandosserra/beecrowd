-- https://judge.beecrowd.com/pt/problems/view/1541
-- Construindo Casas

import Text.Printf (printf)
import Data.List (unfoldr) -- To break the entry String

-- Main function to calculate the land side
calculateLandSide :: Int -> Int -> Int -> Double
calculateLandSide houseSideA houseSideB percentage =
    let houseArea = fromIntegral (houseSideA * houseSideB) :: Double
        totalLandArea = (houseArea * 100.0) / fromIntegral percentage
    in fromIntegral (floor (sqrt totalLandArea)) -- Usamos floor para arredondar para baixo e então convertemos para Double, pois printf espera um Double

-- Auxiliar to read the entry
readNumbers :: String -> [Int]
readNumbers = map read . words

-- main function
main :: IO ()
main = do
    contents <- getContents
    mapM_ processLine $ lines contents
  where
    processLine line = do
        let parts = readNumbers line
        case parts of
            [houseSideA, houseSideB, percentage] ->
                if houseSideA == 0 then return () -- Stop Point (0 0 0)
                else printf "%.0f\n" (calculateLandSide houseSideA houseSideB percentage)
            _ -> return () -- to avoid empty lines


-- By: Fernando Serra
-- https://github.com/fernandosserra