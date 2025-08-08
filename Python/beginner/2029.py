# https://judge.beecrowd.com/pt/problems/view/2029
# Reservatório de Mel

while True:
    try:
        volume = float(input())
        diameter = float(input())
        radius = diameter / 2
        
        pi = 3.14
        areaSize = pi * radius ** 2
        height = volume / areaSize
        
        print(f"ALTURA = {height:.2f}")
        print(f"AREA = {areaSize:.2f}")
    except EOFError:
        break
    except ValueError:
        break
    
# By: Fernando Serra
# https://github.com/fernandosserra        