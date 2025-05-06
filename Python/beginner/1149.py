# https://judge.beecrowd.com/pt/problems/view/1149
# Somando Inteiros Consecutivos

# Requesting
values = list(map(int, input().split()))
usr_input1 = values[0]

# Testing the second value
usr_input2 = next((x for x in values[1:] if x > 0), None)

while usr_input2 is None or usr_input2 <= 0:
    usr_input2 = int(input())

result = 0

# Doing the math
for i in range(usr_input2):
    result += usr_input1 + i

print(result)

# By Fernando Serra
# https://github.com/fernandosserra