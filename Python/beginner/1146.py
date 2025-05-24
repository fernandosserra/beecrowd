# https://judge.beecrowd.com/pt/problems/view/1146
# Sequências Crescentes

while True:
    usr_input = int(input())
    if usr_input == 0:
        break
    else:
        for i in range(1, usr_input + 1):
            print(i, end=' ' if i < usr_input else '\n' )
    
# By Fernando Serra
# https://github.com/fernandosserra