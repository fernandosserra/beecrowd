"""Faça um programa que mostre os números pares entre 1 e 100, inclusive.

Entrada
Neste problema extremamente simples de repetição não há entrada.

Saída
Imprima todos os números pares entre 1 e 100, inclusive se for o caso, um em cada linha."""

# Defining
control_var = 1

# Executing
while control_var <= 100:
    if control_var % 2 == 0:
        print(control_var)
    control_var += 1
    
# By Fernando Serra
# https://github.com/fernandosserra