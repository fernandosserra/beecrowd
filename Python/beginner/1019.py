'''
Leia um valor inteiro, que é o tempo de duração em segundos de um 
determinado evento em uma fábrica, e informe-o expresso no formato horas:minutos:segundos.

Entrada
O arquivo de entrada contém um valor inteiro N.

Saída
Imprima o tempo lido no arquivo de entrada (segundos), convertido para horas:minutos:segundos, conforme exemplo fornecido.
'''
# Requesting
time_amount = int(input())

time_hours = time_amount // 3600
time_amount %= 3600
time_minutes = time_amount // 60
time_amount %= 60

# Presenting
print(f'{time_hours}:{time_minutes}:{time_amount}')