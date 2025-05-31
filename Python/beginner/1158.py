# https://judge.beecrowd.com/pt/problems/view/1158
# Soma de Ímpares Consecutivos III

# Function to compute the sum of y odd numbers starting from x
def sum_odd(x, y):
    if x % 2 == 0:
        x += 1
    return sum(x + 2*i for i in range(y))

# Getting number of test cases
n = int(input())

# Processing each test case immediately
for _ in range(n):
    x, y = map(int, input().split())
    result = sum_odd(x, y)
    print(result)

# By: Fernando Serra
# https://github.com/fernandosserra