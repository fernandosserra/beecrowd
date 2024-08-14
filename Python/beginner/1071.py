"""
Leia 2 valores inteiros X e Y. A seguir, calcule e mostre a soma dos números impares entre eles.

Entrada
O arquivo de entrada contém dois valores inteiros.

Saída
O programa deve imprimir um valor inteiro. Este valor é a soma dos valores 
ímpares que estão entre os valores fornecidos na entrada que deverá caber em um inteiro.
"""
# Requesting
x = int(input())
y = int(input())

# Adjusting
if x > y:
    x, y = y, x

# Starting sum dump
z = 0

# Iterating between values
for i in range (x + 1,  y):  # Need to study hard here!!!
    if i % 2 != 0:
        z += i

# Showing
print(z)

# By Fernando Serra
# https://github.com/fernandoserra        