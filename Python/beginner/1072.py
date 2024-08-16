"""
Leia um valor inteiro N. Este valor será a quantidade de valores inteiros X que serão lidos em seguida.
Mostre quantos destes valores X estão dentro do intervalo [10,20] e quantos estão fora do intervalo, mostrando essas informações.

Entrada
A primeira linha da entrada contém um valor inteiro N (N < 10000), que indica o número de casos de teste.
Cada caso de teste a seguir é um valor inteiro X (-107 < X <107).
 

Saída
Para cada caso, imprima quantos números estão dentro (in) e quantos valores estão fora (out) do intervalo.
"""
# Defining controls
i_in = 0
i_out = 0

# Requesting range
x = int(input())

# Doing the calculations
for _ in range(x):
    i = int(input())
    if i >= 10 and i <= 20:
        i_in += 1
    else:
        i_out += 1

# Showing results
print(f'{i_in} in')
print(f'{i_out} out')

# By Fernando Serra
# https://github.com/fernandosserra