"""
Leia a hora inicial e a hora final de um jogo. A seguir calcule a duração do jogo, sabendo que o mesmo pode começar em um dia e terminar em outro, tendo uma duração mínima de 1 hora e máxima de 24 horas.

Entrada
A entrada contém dois valores inteiros representando a hora de início e a hora de fim do jogo.

Saída
Apresente a duração do jogo conforme exemplo abaixo.
"""
# requesting
start_hr, final_hr = map(int,input().split())

# calculating
if final_hr <= start_hr:
    final_hr += 24
    
print(f'O JOGO DUROU {final_hr - start_hr} HORA(S)')

# By Fernando Serra
# https://github.com/fernandosserra