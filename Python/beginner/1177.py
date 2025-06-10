# https://judge.beecrowd.com/pt/problems/view/1177
# Preenchimento de Vetor II

# Reading an integer input
userInput = int(input())

# Initializing a list with 1000 elements, all set to 0
systemVector = [0] * 1000

# Filling the list with values based on the input
for i in range(1000):
    systemVector[i] = i % userInput

# Printing the list
for i in range(1000):
    print(f'N[{i}] = {systemVector[i]}')
    
    
# By: Fernando Serra
# https://github.com/fernandosserra