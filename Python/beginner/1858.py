# https://judge.beecrowd.com/pt/problems/view/1858
# A Resposta de Theon

# Main Code
people = int(input())

min_guess = 0
min_index = 0

guess = map(int, input().split())

for i in range(people):
    current_guess = next(guess)
    
    if i == 0:
        min_guess = current_guess
        min_index = i
    else:
        if current_guess < min_guess:
            min_guess = current_guess
            min_index = i  
        
print(min_index + 1)

# By: Fernando Serra
# https://github.com/fernandosserra