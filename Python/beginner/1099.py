# https://judge.beecrowd.com/pt/problems/view/1099
# Defining variables
oddAmnt = 0

# Asking user for N
n = int(input())

# Iterating N times and asking user for the other numbers
for _ in range (n):
    x, y = map(int,input().split()) # mapping the numbers into x and y
    
    if x > y: # Adjusting the numbers if they are not in the right order
        x, y = y, x
    
    for _ in range (x + 1 , y, 1): # iterating between x and y
        if _ % 2 != 0: # finding if the number is odd
            oddAmnt += _  # summing the odd numbers      
        
    print(oddAmnt) # Showing the result
    oddAmnt = 0 # Resetting the variable to zero for preventing accumulation
    
# By Fernando Serra
# https://github.com/fernandosserra