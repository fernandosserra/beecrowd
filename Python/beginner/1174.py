# https://judge.beecrowd.com/pt/problems/view/1174
# Seleção em Vetor I

# Read the first 100 floating-point numbers
usrInputs = [float(input()) for _ in range(100)]

# Iterate through the list and print the index and value of elements less than 10
for i, value in enumerate(usrInputs):
    if value <= 10:
        print(f"A[{i}] = {value:.1f}")
# The format specifier .1f ensures that the output is formatted to one decimal place


# By: Fernando Serra
# https://github.com/fernandosserra