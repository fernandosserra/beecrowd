# https://judge.beecrowd.com/pt/problems/view/1132
# Múltiplos de 13

x = int(input())
y = int(input())

if x > y:
    print(sum([i for i in range(y, x + 1) if i % 13 != 0]))
else:
    print(sum([i for i in range(x, y + 1) if i % 13 != 0]))
    
# By Fernando Serra
# https://github.com/fernandosserra