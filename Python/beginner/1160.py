# https://www.beecrowd.com.br/judge/pt/problems/view/1160
# Crescimento Populacional

# Getting Math
import math

# Getting Test Cases
test_Cases = int(input())

# Iterating between populations and time
for _ in range(test_Cases):
   
    # Local Variables
    populationA, populationB, growthA, growthB = map(float, input().split())
    years = 0

    # Calculating
    while populationA <= populationB and years < 101:
        populationA += math.floor((populationA * growthA) / 100)
        populationB += math.floor((populationB * growthB) / 100)
        years += 1
    
    # Testing Century condition
    if years > 100:
        print("Mais de 1 seculo.")
    else:
        print(f"{years} anos.")
    
# By: Fernando Serra
# https://github.com/fernandosserra