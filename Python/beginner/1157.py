# https://judge.beecrowd.com/pt/problems/view/1157
# Divisores I

usr_input = int(input())

for i in range(1, usr_input + 1):
    if usr_input % i == 0:
        print(f'{i}')
        
# By Fernando Serra
# https://github.com/fernandosserra