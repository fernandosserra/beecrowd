# https://judge.beecrowd.com/pt/problems/view/1165
# Números Primos

# Asking for the number of test cases
from math import sqrt


testCases = int(input())

# Iterating through test cases
for _ in range(testCases):
    # Getting number
    number = int(input())
    
    # Below 2 are not primes
    if number < 2:
        print(f'{number} nao eh primo')
    
    # Testing other cases
    else:
        # Boolean Guard to check if number is prime
        is_Prime = True
        # Iterating between 2 and up to sqrt(number)        
        for i in range(2, round(sqrt(number)) + 1):
            if number % i == 0:
                is_Prime = False
                break
            
        # Printing   
        print(f'{number} eh primo' if is_Prime else f'{number} nao eh primo') 
    
# By Fernando Serra
# https://github.com/fernandosserra