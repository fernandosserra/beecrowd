# https://judge.beecrowd.com/pt/problems/view/1131
# Grenais

# Variables
p_gremio = 0
p_inter = 0
empates = 0
v_gremio = 0
v_inter = 0
repeat = 1
v_repeat = 0

# Requesting
while repeat == 1:
    p_inter, p_gremio = map(int, input().split())
    if p_gremio > p_inter:
        v_gremio += 1
    elif p_gremio < p_inter:
        v_inter += 1
    elif p_gremio == p_inter:
        empates += 1
    
    
    while v_repeat == 0:
        print('Novo grenal (1-sim 2-nao)')
        v_repeat = int(input())
        if v_repeat == 1:
            v_repeat = 0
            break
        elif v_repeat != 1:
            repeat = 0
            break
        
print(f'{v_gremio+v_inter+empates} grenais')
print(f'Inter:{v_inter}')
print(f'Gremio:{v_gremio}')
print(f'Empates:{empates}')
if v_inter > v_gremio:
    print('Inter venceu mais')
elif v_inter < v_gremio:
    print('Gremio venceu mais')
elif v_inter == v_gremio:
    print('Nao houve vencedor')            
            
# By Fernando Serra
# https://github.com/fernandosserra