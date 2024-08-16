"""
Pedrinho está organizando um evento em sua Universidade. O evento deverá ser no mês de Abril, 
iniciando e terminando dentro do mês. O problema é que Pedrinho quer calcular o tempo que o evento vai durar, 
uma vez que ele sabe quando inicia e quando termina o evento.

Sabendo que o evento pode durar de poucos segundos a vários dias, 
você deverá ajudar Pedrinho a calcular a duração deste evento.

Entrada
Como entrada, na primeira linha vai haver a descrição “Dia”, 
seguido de um espaço e o dia do mês no qual o evento vai começar. Na linha seguinte, será informado o momento no qual o evento vai iniciar, no formato hh : mm : ss. Na terceira e quarta linha de entrada haverá outra informação no mesmo formato das duas primeiras linhas, indicando o término do evento.

Saída
Na saída, deve ser apresentada a duração do evento, no seguinte formato:

W dia(s)
X hora(s)
Y minuto(s)
Z segundo(s)

"""
# date to seconds
def to_seconds(day, hour, minute, second):
    return day * 86400 + hour * 3600 + minute * 60 + second

# Requesting
st_day = int(input().split()[1])
st_time = list(map(int, input().split(" : ")))
end_day = int(input().split()[1])
end_time = list(map(int, input().split(" : ")))

# Calcs
st_seconds = to_seconds(st_day, *st_time)
end_seconds = to_seconds(end_day, *end_time)

duration = end_seconds - st_seconds

sh_days = duration // 86400
duration %= 86400
sh_hours = duration // 3600
duration %= 3600
sh_minutes = duration // 60
sh_seconds = duration % 60

# Showing
print(f'{sh_days} dia(s)')
print(f'{sh_hours} hora(s)')
print(f'{sh_minutes} minuto(s)')
print(f'{sh_seconds} segundo(s)')

# By Fernando Serra
# https://github.com/fernandosserra