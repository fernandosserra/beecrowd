# https://judge.beecrowd.com/pt/problems/view/1133
# Resto da Divisão

x = int(input())
y = int(input())

if x > y:
    x, y = y, x

for i in range(x + 1, y):
    if i % 5 == 2 or i % 5 == 3:
        print(i)
        
# By Fernando Serra
# https://github.com/fernandosserra