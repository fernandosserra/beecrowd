"""
Leia 5 valores Inteiros. A seguir mostre quantos valores digitados foram pares, quantos valores digitados foram ímpares, quantos valores digitados foram positivos e quantos valores digitados foram negativos.

Entrada
O arquivo de entrada contém 5 valores inteiros quaisquer.

Saída
Imprima a mensagem conforme o exemplo fornecido, uma mensagem por linha, não esquecendo o final de linha após cada uma.
"""
# Definitions
usr_values = []
max_values = 5
positive_values = 0
negative_values = 0
odd_values = 0
even_values = 0

# Requesting
for _ in range(max_values):
    value = float(input())
    usr_values.append(value)
    
# Calculating
for _ in range(len(usr_values)):
    if usr_values[_] > 0:
        positive_values += 1
    if usr_values[_] < 0:
        negative_values += 1
    if usr_values[_] % 2 == 0:
        even_values += 1
    if usr_values[_] % 2 == 1:
        odd_values += 1

# Showing
print(f'{even_values} valor(es) par(es)')
print(f'{odd_values} valor(es) impar(es)')
print(f'{positive_values} valor(es) positivo(s)')
print(f'{negative_values} valor(es) negativo(s)')

# By Fernando Serra
# https://github.com/fernandosserra