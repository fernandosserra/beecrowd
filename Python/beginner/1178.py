# https://judge.beecrowd.com.br/problems/view/1178
# Preenchimento de Vetor III

# Read the first input value
usrInput = float(input())

# Initialize the vector with the first input value and fill it with halved values
vector = [usrInput]
for i in range(1, 100):
    vector.append(vector[i - 1] / 2)

# Print the vector values formatted to four decimal places
for i in range(100):
    print(f"N[{i}] = {vector[i]:.4f}")
    
# By: Fernando Serra
# https://github.com/fernandosserra