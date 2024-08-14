'''
Cédulas

Leia um valor inteiro. A seguir, calcule o menor número de notas possíveis (cédulas) 
no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2 e 1.
A seguir mostre o valor lido e a relação de notas necessárias.

Entrada
O arquivo de entrada contém um valor inteiro N (0 < N < 1000000).

Saída
Imprima o valor lido e, em seguida, a quantidade mínima de notas de cada tipo necessárias, 
conforme o exemplo fornecido. Não esqueça de imprimir o fim de linha após cada linha, 
caso contrário seu programa apresentará a mensagem: “Presentation Error”.
'''
# Requesting
amount = int(input())

# Presenting
print(amount)
print(f'{amount//100} nota(s) de R$ 100,00')
amount %= 100
print(f'{amount//50} nota(s) de R$ 50,00')
amount %= 50
print(f'{amount//20} nota(s) de R$ 20,00')
amount %= 20
print(f'{amount//10} nota(s) de R$ 10,00')
amount %= 10
print(f'{amount//5} nota(s) de R$ 5,00')
amount %= 5
print(f'{amount//2} nota(s) de R$ 2,00')
amount %= 2
print(f'{amount} nota(s) de R$ 1,00')