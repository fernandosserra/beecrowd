# https://judge.beecrowd.com/pt/problems/view/1541
# Construindo Casas

# Importing math and Sys
from math import sqrt, floor

# Functon to calculate landSize
def calculateLandSize(houseSizeA, houseSizeB, percentage):
    houseArea = houseSizeA * houseSizeB
    totalLandArea = (houseArea * 100) / percentage
    return floor(sqrt(totalLandArea))

# Main Loop
while True:
    try:
        houseSizeA, houseSizeB, percentage = map(int, input().split())
    except EOFError:
        break
    except ValueError:
        break
    
        
    if houseSizeA == 0:
        break
        
    landSize = calculateLandSize(houseSizeA, houseSizeB, percentage)
    print(int(landSize))
    
# By: Fernando Serra
# https://github.com/fernandosserra    