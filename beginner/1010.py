'''
Neste problema, deve-se ler o código de uma peça 1, o número de peças 1, o valor unitário de cada peça 1, 
o código de uma peça 2, o número de peças 2 e o valor unitário de cada peça 2. Após, calcule e mostre o valor a ser pago.

Entrada
O arquivo de entrada contém duas linhas de dados. Em cada linha haverá 3 valores, 
respectivamente dois inteiros e um valor com 2 casas decimais.

Saída
A saída deverá ser uma mensagem conforme o exemplo fornecido abaixo, l
embrando de deixar um espaço após os dois pontos e um espaço após o "R$". O valor deverá ser apresentado com 2 casas após o ponto.
'''
# -*- coding: utf-8 -*-

'''
Escreva a sua solução aqui
Code your solution here
Escriba su solución aquí
'''
# Requesting
piece_1, quant_1, value_1 = map(float,input().split())
piece_2, quant_2, value_2 = map(float,input().split())

# Evaluating
check_value1 = quant_1 * value_1
check_value2 = quant_2 * value_2
checkout_value = check_value1 + check_value2

# Returning
print(f'VALOR A PAGAR: R$ {checkout_value:.2f}')