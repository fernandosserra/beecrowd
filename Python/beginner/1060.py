"""
Faça um programa que leia 6 valores. Estes valores serão somente negativos ou positivos (desconsidere os valores nulos). 
A seguir, mostre a quantidade de valores positivos digitados.

Entrada
Seis valores, negativos e/ou positivos.

Saída
Imprima uma mensagem dizendo quantos valores positivos foram lidos.
"""
# Definitions
usr_values = []
max_values = 6
positive_values = 0

# Requesting
for _ in range(max_values):
    value = float(input())
    usr_values.append(value)
    
# Calculating
for _ in range(len(usr_values)):
    if usr_values[_] > 0:
        positive_values += 1

# Showing
print(f'{positive_values} valores positivos')

# By Fernando Serra
# https://github.com/fernandosserra