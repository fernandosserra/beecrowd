-- https://judge.beecrowd.com/pt/problems/view/1079
-- Médias Ponderadas

-- Main function
main :: IO ()
main = do
    -- Reading the number of sequences
    usr_sequences <- readLn
    -- Iterating through the sequences
    sequence_ (replicate usr_sequences processSequence)

-- Function to process each sequence
processSequence :: IO ()
processSequence = do
    -- Reading the values
    [usr_v1, usr_v2, usr_v3] <- fmap (map read . words) getLine
    -- Calculating and printing the result
    let result = (usr_v1 * 2 + usr_v2 * 3 + usr_v3 * 5) / 10
    print (roundTo1Decimal result)

-- Function to round to one decimal place
roundTo1Decimal :: Double -> Double
roundTo1Decimal x = fromIntegral (round (x * 10)) / 10

-- By Fernando Serra
-- https://github.com/fernandosserra