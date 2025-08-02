-- https://judge.beecrowd.com/pt/problems/view/1985
-- MacPRONALTS

import Text.Printf (printf)
import Control.Monad (replicateM)

productPrices :: [(Int, Float)]
productPrices =
    [ (1001, 1.50)
    , (1002, 2.50)
    , (1003, 3.50)
    , (1004, 4.50)
    , (1005, 5.50)
    ]


calculateItemPrice :: Int -> Int -> Float
calculateItemPrice productId productsQtOrder =
    case lookup productId productPrices of
        Just price -> fromIntegral productsQtOrder * price
        Nothing    -> 0.0


main :: IO ()
main = do    
    productsTotalQtStr <- getLine
    let productsTotalQt = read productsTotalQtStr :: Int
    
    itemPrices <- replicateM productsTotalQt $ do
        line <- getLine
        let [productId, productsQtOrder] = map read (words line) :: [Int]
        return $ calculateItemPrice productId productsQtOrder

    let productsTotalPrice = sum itemPrices
    printf "%.2f\n" productsTotalPrice

-- By: Fernando Serra & Washu Sama
-- https://github.com/fernandosserra