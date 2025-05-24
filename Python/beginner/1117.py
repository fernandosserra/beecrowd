# https://judge.beecrowd.com/pt/problems/view/1117
# Validação de Nota

# Planting a flag
media = 0
counter = 0

# Iterating
while counter < 2:
    student_points = float(input())
    if student_points >= 0 and student_points <= 10:
        media += student_points
        counter += 1
    else:
        print('nota invalida')    
    
    if counter == 2:
        media = media / 2
        print(f'media = {media:.2f}')
        
# By Fernando Serra
# https://github.com/fernandosserra