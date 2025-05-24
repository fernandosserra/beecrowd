"""
Leia 6 valores. Em seguida, mostre quantos destes valores digitados foram positivos. Na próxima linha, deve-se mostrar a média de todos os valores positivos digitados, com um dígito após o ponto decimal.

Entrada
A entrada contém 6 números que podem ser valores inteiros ou de ponto flutuante. Pelo menos um destes números será positivo.

Saída
O primeiro valor de saída é a quantidade de valores positivos. A próxima linha deve mostrar a média dos valores positivos digitados.
"""
# Definitions
usr_values = []
max_values = 6
positive_values = 0
positive_list = []

# Requesting
for _ in range(max_values):
    value = float(input())
    usr_values.append(value)
    
# Calculating
for _ in range(len(usr_values)):
    if usr_values[_] > 0:
        positive_list.append(usr_values[_])
        positive_values += 1

positive_avg = sum(positive_list) / len(positive_list)

# Showing
print(f'{positive_values} valores positivos')
print(f'{positive_avg:.1f}')

# By Fernando Serra
# https://github.com/fernandosserra