# https://judge.beecrowd.com/pt/problems/view/1172
# Substituição em Vetor I

# Read the first 10 integers from input
usrInputs = [int(input()) for _ in range(10)]

# Replace negative values with 1
for i in range(10):
    if usrInputs[i] <= 0:
        usrInputs[i] = 1
        
# Print the modified list
for i in range(10):
    print(f"X[{i}] = {usrInputs[i]}")
    
# By: Fernando Serra
# https://github.com/fernandosserra