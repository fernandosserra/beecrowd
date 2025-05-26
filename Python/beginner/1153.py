# https://judge.beecrowd.com/pt/problems/view/1153
# Fatorial Simples

# Requesting
usr_input = int(input())

# Main

if usr_input == 0:
    print(1)
else:
    fatorial = 1
    for i in range(1, usr_input + 1):
        fatorial *= i
    print(fatorial)
    
# By Fernando Serra
# https://github.com/fernandosserra