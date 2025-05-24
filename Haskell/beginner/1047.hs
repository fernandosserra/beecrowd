-- https://judge.beecrowd.com/pt/problems/view/1047
-- Importing printf
import Text.Printf

-- Main
main = do
    -- Requesting values and assign into variables
    usr_input <- getLine
    let [starting_hour, starting_minutes, ending_hour, ending_minutes] = map read (words usr_input) :: [Int]

    -- Finding minutes
    let control_start = starting_hour * 60 + starting_minutes
    let control_end = ending_hour * 60 + ending_minutes

    -- Testing if the game turns the day
    let control_end' = if control_end <= control_start
                        then control_end + 24 * 60
                        else control_end
    
    -- Putting results into variables to simplify the printf
    let hour_present = (control_end' - control_start) `div` 60
    let minute_present = (control_end' - control_start) `mod` 60

    -- Showing results
    printf "O JOGO DUROU %d HORA(S) E %d MINUTO(S)\n" hour_present minute_present

-- By Fernando Serra
-- https://github.com/fernandosserra