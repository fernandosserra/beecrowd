# https://judge.beecrowd.com/pt/problems/view/1159
# Soma de Pares Consecutivos

while True:
    x = int(input())
    if x == 0:
        break

    # Ajusta se x for ímpar
    if x % 2 != 0:
        x += 1

    # Soma os 5 pares consecutivos
    soma = sum([x + 2 * i for i in range(5)])
    print(soma)

# By: Fernando Serra
# https://github.com/fernandosserra