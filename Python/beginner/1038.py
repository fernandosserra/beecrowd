'''
Com base na tabela abaixo, escreva um programa que leia o código de um item e a quantidade deste item. 
A seguir, calcule e mostre o valor da conta a pagar.
https://resources.beecrowd.com/gallery/images/problems/UOJ_1038_pt.png

Entrada
O arquivo de entrada contém dois valores inteiros correspondentes ao código e à quantidade de um item conforme tabela acima.

Saída
O arquivo de saída deve conter a mensagem "Total: R$ " seguido pelo valor a ser pago, com 2 casas após o ponto decimal.

'''
# Creating Menu
menu = ('','Cachorro Quente', 'X-Salada', 'X-Bacon', 'Torrada simples', 'Refrigerante')
menu_prices = ('', 4.00, 4.50, 5.00, 2.00, 1.50)

# Requesting
usr_opt, usr_quant = map(int,(input().split()))

# Showing
total = print(f'Total: R$ {(menu_prices[usr_opt]*usr_quant):.2f}')

# By Fernando Serra
# https://github.com/fernandosserra