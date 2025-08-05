# https://judge.beecrowd.com/pt/problems/view/2006
# Identificando o chá

teaType = int(input())

guesses_str = input().split()

rightGuesses = 0
for guess_str in guesses_str:
    guess = int(guess_str)
    if guess == teaType:
        rightGuesses += 1

print(rightGuesses)

# By: Fernando Serra
# https://github.com/fernandosserra