"""
Leia um valor inteiro X (1 <= X <= 1000). Em seguida mostre os ímpares de 1 até X, um valor por linha, inclusive o X, se for o caso.

Entrada
O arquivo de entrada contém 1 valor inteiro qualquer.

Saída
Imprima todos os valores ímpares de 1 até X, inclusive X, se for o caso.
"""

# Requesting
x = int(input())

# Calculating and showing
for i in range(1, x + 1):
    if i % 2 != 0:
        print(i)
        
# By Fernando Serra
# https://github.com/fernandoserra