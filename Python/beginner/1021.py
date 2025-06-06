'''
Leia um valor de ponto flutuante com duas casas decimais. Este valor representa um valor monetário. A seguir, calcule o menor número de notas e moedas possíveis no qual o valor pode ser decomposto. As notas consideradas são de 100, 50, 20, 10, 5, 2. As moedas possíveis são de 1, 0.50, 0.25, 0.10, 0.05 e 0.01. A seguir mostre a relação de notas necessárias.

Entrada
O arquivo de entrada contém um valor de ponto flutuante N (0 ≤ N ≤ 1000000.00).

Saída
Imprima a quantidade mínima de notas e moedas necessárias para trocar o valor inicial, conforme exemplo fornecido.

Obs: Utilize ponto (.) para separar a parte decimal.

'''
# Requesting
bills, cents = [int(x) for x in input().strip().split('.')]
bills = bills * 100 + cents

# Listing
papers = [10000, 5000, 2000, 1000, 500, 200]
coins = [100, 50, 25, 10, 5, 1]

# Presenting
print('NOTAS:')
for paper in papers:
    print(f'{bills//paper} nota(s) de R$ {(paper/100):.2f}')
    bills %= paper
    
print('MOEDAS:')
for coin in coins:
    print(f'{bills//coin} moeda(s) de R$ {(coin/100):.2f}')
    bills %= coin
    
# By Fernando Serra
# https://github.com/fernandosserra