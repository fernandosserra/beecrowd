-- https://judge.beecrowd.com.br/judge/pt/problems/view/1061
-- Event Duration

import Text.Printf (printf)

-- Function to convert days, hours, minutes, and seconds to total seconds
convert :: Int -> Int -> Int -> Int -> Int
convert days hours minutes seconds = 
    (days * 24 * 60 * 60) + (hours * 60 * 60) + (minutes * 60) + seconds

-- Main function
main :: IO ()
main = do
    -- Reading the start day
    s_input <- getLine  -- Example: "Dia 5"
    let s_day = read (last (words s_input)) :: Int  -- Extract the number after "Dia"

    -- Reading the start time (hours, minutes, seconds)
    timeStr1 <- getLine
    let [s_hour, s_minute, s_second] = map read (words (map (\c -> if c == ':' then ' ' else c) timeStr1)) :: [Int]

    -- Reading the end day
    e_input <- getLine  -- Example: "Dia 9"
    let e_day = read (last (words e_input)) :: Int  -- Extract the number after "Dia"

    -- Reading the end time (hours, minutes, seconds)
    timeStr2 <- getLine
    let [e_hour, e_minute, e_second] = map read (words (map (\c -> if c == ':' then ' ' else c) timeStr2)) :: [Int]

    -- Calculating the total time in seconds
    let starting = convert s_day s_hour s_minute s_second
    let ending = convert e_day e_hour e_minute e_second
    let duration = ending - starting

    -- Displaying the result
    printf "%d Dia(s)\n" (duration `div` (24 * 60 * 60))
    let duration' = duration `mod` (24 * 60 * 60)
    printf "%d Hora(s)\n" (duration' `div` (60 * 60))
    let duration'' = duration' `mod` (60 * 60)
    printf "%d Minuto(s)\n" (duration'' `div` 60)
    printf "%d Segundo(s)\n" (duration'' `mod` 60)


-- By Fernando Serra
-- https://github.com/fernandosserra
-- Most of the code was built with the help of Chat GPT and the Codeium extension