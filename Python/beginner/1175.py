# https://judge.beecrowd.com/pt/problems/view/1175
# Troca em Vetor I

# Getting inputs for the first vector
usrvector = [int(input()) for _ in range(20)]

# Reversing the vector
for i in range(10):
    usrvector[i], usrvector[19 - i] = usrvector[19 - i], usrvector[i]
    
# Printing the reversed vector
for i in range(20):
    print(f"N[{i}] = {usrvector[i]}")
    
# By: Fernando Serra
# https://github.com/fernandosserra