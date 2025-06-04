# https://judge.beecrowd.com/pt/problems/view/1164
# Número perfeito

# Getting test cases
test_cases = int(input())

# Function to find the perfection of a number
def is_perfect(n):
    divisors = [x for x in range(1, n // 2 + 1) if n % x == 0]
    return sum(divisors) == n

# Iterating between cases
for _ in range(test_cases):
    # Getting number
    number = int(input())
    
    # Showing result
    if is_perfect(number):
        print(f'{number} eh perfeito')
    else:
        print(f'{number} nao eh perfeito')
        
# By Fernando Serra
# https://github.com/fernandosserra