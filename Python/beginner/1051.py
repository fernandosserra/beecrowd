"""
Em um país imaginário denominado Lisarb, todos os habitantes ficam felizes em pagar seus impostos, 
pois sabem que nele não existem políticos corruptos
e os recursos arrecadados são utilizados em benefício da população, sem qualquer desvio. 
A moeda deste país é o Rombus, cujo símbolo é o R$.

Leia um valor com duas casas decimais, equivalente ao salário 
de uma pessoa de Lisarb. Em seguida, calcule e mostre o valor que esta 
pessoa deve pagar de Imposto de Renda, segundo a tabela abaixo.



Lembre que, se o salário for R$ 3002.00, a taxa que incide é de 8% 
apenas sobre R$ 1000.00, pois a faixa de salário que fica de R$ 0.00 até R$ 2000.00 
é isenta de Imposto de Renda. No exemplo fornecido (abaixo), 
a taxa é de 8% sobre R$ 1000.00 + 18% sobre R$ 2.00, 
o que resulta em R$ 80.36 no total. O valor deve ser impresso com duas casas decimais.

Entrada
A entrada contém apenas um valor de ponto flutuante, com duas casas decimais.

Saída
Imprima o texto "R$" seguido de um espaço e do valor total devido de 
Imposto de Renda, com duas casas após o ponto. Se o valor de entrada for menor ou igual a 2000, 
deverá ser impressa a mensagem "Isento".
"""
# Requesting
income = float(input())
ir_tax = 0

if (income > 4500.00):
    ir_tax += (income - 4500.00) * 0.28
    income = 4500.00
if (income > 3000.00):
    ir_tax += (income - 3000.00) * 0.18
    income = 3000.00
if (income > 2000.00):
    ir_tax += (income - 2000.00) * 0.08

# Showing    
if ir_tax == 0:
    print('Isento')
else:
    print(f'R$ {ir_tax:.2f}')
    
# By Fernando Serra
# https://github.com/fernandosserra