'''
Distancia

Dois carros (X e Y) partem em uma mesma direção. O carro X sai com velocidade constante de 60 Km/h 
e o carro Y sai com velocidade constante de 90 Km/h.

Em uma hora (60 minutos) o carro Y consegue se distanciar 30 quilômetros do carro X, 
ou seja, consegue se afastar um quilômetro a cada 2 minutos.

Leia a distância (em Km) e calcule quanto tempo leva (em minutos) 
para o carro Y tomar essa distância do outro carro.

Entrada
O arquivo de entrada contém um número inteiro.

Saída
Imprima o tempo necessário seguido da mensagem "minutos".
'''
# Constants
X = 90
Y = 60

# Requesting
road_time = int(input())

# Calculating
time_to_pass = (road_time * Y) // 30

# Showing
print(f'{time_to_pass} minutos')