# https://judge.beecrowd.com/pt/problems/view/1116

# Requesting the number of iterations
n = int(input())

# Iterating
for _ in range(1, n + 1, 1):
    # Requesting values
    x, y = map(int,input().split())
    
    if y == 0:
        print('divisao impossivel')
    else:
        print(f'{x / y:.1f}')
    

# By Fernando Serra
# https://github.com/fernandosserra