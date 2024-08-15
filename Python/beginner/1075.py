"""
Leia um valor inteiro N. Apresente todos os números entre 1 e 10000 que divididos por N dão resto igual a 2.

Entrada
A entrada contém um valor inteiro N (N < 10000).

Saída
Imprima todos valores que quando divididos por N dão resto = 2, um por linha.
"""

# Requesting the number to user
n = int(input())

# Doing the calculations
for _ in range(1, 10001, 1):
    # finding if the rest is equal two
    if _ % n == 2:
        # then, showing the result
        print(_)

# By Fernando Serra
# https://github.com/fernandoserra