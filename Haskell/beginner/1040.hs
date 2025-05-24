-- https://judge.beecrowd.com/pt/problems/view/1040
-- Importing printf
import Text.Printf

-- Main Function
main = do
    -- Requesting values and assign into variables
    usr_input <- getLine

    -- Extracting notes to calculate media
    let notes = map read (words usr_input) :: [Float]
    let [n1, n2, n3, n4] = notes

    -- Finding media
    let media = ((n1*2)+(n2*3)+(n3*4)+n4)/10

    -- Finding aprovation status
    if media >= 7.0
        then printf "Media: %.1f\nAluno aprovado.\n" media
    else if media >= 5.0 && media <= 6.9
        then do
            printf "Media: %.1f\nAluno em exame.\n" media
            n_exam <- readLn :: IO Float
            printf "Nota do exame: %.1f\n" n_exam
            let media_exam = (media + n_exam) / 2
            -- Testing exam note
            if media >= 5.0
                then printf "Aluno aprovado.\nMedia final: %.1f\n" media_exam
                else printf "Aluno reprovado.\nMedia final: %.1f\n" media_exam
    
    else
        printf "Media: %.1f\nAluno reprovado.\n" media

-- By Fernando Serra
-- https://github.com/fernandosserra