# https://judge.beecrowd.com/pt/problems/view/1173
# Preenchimento de Vetor I

# The code reads an integer input and generates a list where 
# each element is double the previous one, starting from the input value.

user_input = int(input()) # Read an integer input
vetor = [user_input * (2 ** i) for i in range(10)] # Generate the list with powers of 2
for i, v in enumerate(vetor): # Enumerate to get index and value
    print(f'N[{i}] = {v}') # Output the index and value in the required format
    
# By: Fernando Serra
# https://github.com/fernandosserra