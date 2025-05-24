# https://judge.beecrowd.com/pt/problems/view/1115

# Iterating
while True:
    x, y = map(int, input().split())
    if x > 0 and y > 0:
        print("primeiro")
    elif x < 0 and y > 0:
        print("segundo")
    elif x < 0 and y < 0:
        print("terceiro")
    elif x > 0 and y < 0:
        print("quarto")
    else:
        break
    
# By Fernando Serra
# https://github.com/fernandosserra