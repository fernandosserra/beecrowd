"""
Leia 3 valores reais (A, B e C) e verifique se eles formam ou não um triângulo. 
Em caso positivo, calcule o perímetro do triângulo e apresente a mensagem:

Perimetro = XX.X

Em caso negativo, calcule a área do trapézio que tem A e B como base e C como altura, mostrando a mensagem

Area = XX.X

Entrada
A entrada contém três valores reais.

Saída
O resultado deve ser apresentado com uma casa decimal.
"""
# Requesting values
a, b, c = map(float,input().split())
perimeter = a + b + c
area = (a + b) * c / 2

# is a triangle?
if (a + b) > c \
    and (a + c) > b \
    and (b + c) > a:
        print(f'Perimetro = {perimeter}')
else:
    print(f'Area = {area}')
    
# By Fernando Serra
# https://github.com/fernandosserra