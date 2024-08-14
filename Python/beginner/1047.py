"""
Leia a hora inicial, minuto inicial, hora final e minuto final de um jogo. A seguir calcule a duração do jogo.

Obs: O jogo tem duração mínima de um (1) minuto e duração máxima de 24 horas.

Entrada
Quatro números inteiros representando a hora de início e fim do jogo.

Saída
Mostre a seguinte mensagem: “O JOGO DUROU XXX HORA(S) E YYY MINUTO(S)” .
"""

# requesting
start_hour, start_minute, ending_hour, ending_minute = map(int,input().split())

# Calculating:
control_start = start_hour * 60 + start_minute
control_final = ending_hour * 60 + ending_minute

if (control_final <= control_start):
    control_final += 24 * 60

hour_present = (control_final - control_start) // 60
minute_present = (control_final - control_start) % 60

# Showing
print(f'O JOGO DUROU {hour_present} HORA(S) E {minute_present} MINUTO(S)')