# https://judge.beecrowd.com/pt/problems/view/1151
# Fibonacci Fácil

# Requesting
usr_input = int(input())

# Starting another variables
control1 = 0
control2 = 1
aux = 0

# Testing input
if usr_input == 0:
    exit()

# First Print
print(f'{aux} ', end='')
aux = control1 + control2

# Iterating for the next values
for i in range(1, usr_input, 1):
    # Testing if it's the last
    if i == usr_input - 1:
        print(f'{aux}')
    else:
        print(f'{aux} ', end='')
        aux = control1 + control2
        control1 = control2
        control2 = aux

# By Fernando Serra
# https://github.com/fernandosserra