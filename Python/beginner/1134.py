# https://judge.beecrowd.com/pt/problems/view/1134
# Tipos de Combustível

alchool = 0
gasoline = 0
diesel = 0

while True:
    fuel = int(input())
    if fuel == 1:
        alchool += 1
    elif fuel == 2:
        gasoline += 1
    elif fuel == 3:
        diesel += 1
    elif fuel == 4:
        break

print('MUITO OBRIGADO')
print('Alcool: {}'.format(alchool))
print('Gasolina: {}'.format(gasoline))
print('Diesel: {}'.format(diesel))

# By Fernando Serra
# https://github.com/fernandosserra