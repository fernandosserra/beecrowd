'''
Leia 3 valores de ponto flutuante e efetue o cálculo das raízes da equação de Bhaskara. 
Se não for possível calcular as raízes, mostre a mensagem correspondente “Impossivel calcular”, caso haja uma divisão por 0 ou raiz de numero negativo.

Entrada
Leia três valores de ponto flutuante (double) A, B e C.

Saída
Se não houver possibilidade de calcular as raízes, apresente a mensagem "Impossivel calcular". 
Caso contrário, imprima o resultado das raízes com 5 dígitos após o ponto, com uma mensagem correspondente 
conforme exemplo abaixo. Imprima sempre o final de linha após cada mensagem.
'''
# imports
from math import sqrt

# requests
a, b, c = map(float,input().split(' '))

# calculating
delta = ((b**2) - 4*(a*c))

if delta > 0 and a > 0:
    x_one = (-b + sqrt(delta)) / (2*a)
    x_two = (-b - sqrt(delta)) / (2*a)
    print(f'R1 = {x_one:.5f}')
    print(f'R2 = {x_two:.5f}')
elif delta == 0:
    x_one = (-b + sqrt(delta)) / (2*a)
    print(f'R1 = {x_one:.5f}')
else:
    print('Impossivel calcular')
    
# By Fernando Serra
# https://github.com/fernandosserra