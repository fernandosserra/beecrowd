"""
A empresa ABC resolveu conceder um aumento de salários a seus funcionários de acordo com a tabela abaixo:


Salário	Percentual de Reajuste
0 - 400.00          15%
400.01 - 800.00     12%
800.01 - 1200.00    10%
1200.01 - 2000.00   7%
Acima de 2000.00    4%

Leia o salário do funcionário e calcule e mostre o novo salário, bem como o valor de reajuste 
ganho e o índice reajustado, em percentual.

Entrada
A entrada contém apenas um valor de ponto flutuante, com duas casas decimais.

Saída
Imprima 3 linhas na saída: o novo salário, o valor ganho de reajuste (ambos devem ser apresentados com 2 casas decimais) 
e o percentual de reajuste ganho, conforme exemplo abaixo.
"""
# requesting
income = float(input())
bonus = 0
perc = 0

# calculating
if income <= 400:
    perc = 0.15
    bonus = income * perc
    income += bonus    
elif income > 400 and income <= 800:
    perc = 0.12
    bonus = income * perc
    income += bonus
elif income >= 800 and income <= 1200:
    perc = 0.1
    bonus = income * perc
    income += bonus
elif income > 1200 and income <= 2000:
    perc = 0.07
    bonus = income * perc
    income += bonus
else:
    perc = 0.04
    bonus = income * perc
    income += bonus
    
# showing
print(f'Novo salario: {income:.2f}')
print(f'Reajuste ganho: {bonus:.2f}')
print(f'Em percentual: {int(perc*100)} %')

# By Fernando Serra
# https://github.com/fernandosserra