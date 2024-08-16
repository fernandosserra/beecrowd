"""
Faça um programa que leia 5 valores inteiros. Conte quantos destes valores digitados são pares e mostre esta informação.

Entrada
O arquivo de entrada contém 5 valores inteiros quaisquer.

Saída
Imprima a mensagem conforme o exemplo fornecido, indicando a quantidade de valores pares lidos.
"""
values = []
for i in range(5):
    single_value = int(input())
    if single_value % 2 == 0:
        values.append(single_value)
print(f'{len(values)} valores pares')

# By Fernando Serra
# https://github.com/fernandosserra