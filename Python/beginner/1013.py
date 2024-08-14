'''
Faça um programa que leia três valores e apresente o maior dos três valores lidos seguido da mensagem “eh o maior”. Utilize a fórmula:

MaiorAB = ((a+b)+ (abs(a-b))) / 2

Obs.: a fórmula apenas calcula o maior entre os dois primeiros (a e b). Um segundo passo, portanto é necessário para chegar no resultado esperado.

Entrada
O arquivo de entrada contém três valores inteiros.

Saída
Imprima o maior dos três valores seguido por um espaço e a mensagem "eh o maior".'''

# Requesting
a, b, c = map(int, input().split())

# Calculating
greater_ab = (a + b + abs(a - b)) // 2
greater_abc = (greater_ab + c + abs(greater_ab - c)) // 2

# Showing
print(f'{greater_abc} eh o maior')