'''
Você deve fazer um programa que leia um valor qualquer e apresente uma mensagem 
dizendo em qual dos seguintes intervalos ([0,25], (25,50], (50,75], (75,100]) 
este valor se encontra. Obviamente se o valor não estiver em nenhum destes intervalos,
deverá ser impressa a mensagem “Fora de intervalo”.

O símbolo ( representa "maior que". Por exemplo:
[0,25]  indica valores entre 0 e 25.0000, inclusive eles.
(25,50] indica valores maiores que 25 Ex: 25.00001 até o valor 50.0000000

Entrada
O arquivo de entrada contém um número com ponto flutuante qualquer.

Saída
A saída deve ser uma mensagem conforme exemplo abaixo.
'''

# Requesting
usr_value = float(input())

# Calculating
if usr_value >= 0 and usr_value <= 25:
    print(f'Intervalo [0,25]')
elif usr_value > 25 and usr_value <= 50:
    print(f'Intervalo (25,50]')
elif usr_value > 50 and usr_value <= 75:
    print(f'Intervalo (50,75]')
elif usr_value > 75 and usr_value <= 100:
    print(f'Intervalo (75,100]')
else:
    print(f'Fora de Intervalo')
    
# By Fernando Serra
# https://github.com/fernandosserra