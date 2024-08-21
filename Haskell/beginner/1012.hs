-- Doing imports to use functions
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    {-a <- readLn :: IO Float
    b <- readLn :: IO Float
    c <- readLn :: IO Float
    d <- readLn :: IO Float-}

    -- lol, I always forget to use getLine in Haskell...
    usr_expression <- getLine

    -- Now, we can use this to extract values! Aha! <3
    let [a, b, c] = map read (words usr_expression) :: [Double] -- Ok, again, I forget DOUBLE type.

    -- Doing the calculations
    let triangle = (a * c) / 2
    let circle = 3.14159 * (c ^ 2)
    let trapezium = ((a + b) * c) / 2
    let square = b * b
    let rectangle = a * b
    
    -- Showing results
    printf "TRIANGULO: %.3f\n" triangle
    printf "CIRCULO: %.3f\n" circle
    printf "TRAPEZIO: %.3f\n" trapezium
    printf "QUADRADO: %.3f\n" square
    printf "RETANGULO: %.3f\n" rectangle

-- By Fernando Serra
-- https://github.com/fernandosserra