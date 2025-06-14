# https://judge.beecrowd.com/pt/problems/view/1180
# Menor e Posição

# Readin a integer to set the array size
array_size = int(input())

# Reading n integers from the user
values = list(map(int, input().split()))

# Finding the minimum value and its position
min_value = min(values)
position = values.index(min_value)

# Printing the results
print(f"Menor valor: {min_value}")
print(f"Posicao: {position}")

# By: Fernando Serra
# https://github.com/fernandosserra