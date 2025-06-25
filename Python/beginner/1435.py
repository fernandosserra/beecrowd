# https://judge.beecrowd.com/pt/problems/view/1435
# Matriz Quadrada I

while True: # This will iterate until n = 0
    
    # Getting the size of the matrix
    n = int(input())
    
    if n == 0: # Testing if n = 0
        break # Breaking the loop if n = 0
    
    # Printing the matrix
    for i in range(n):
        
        line_elements = [] # To store the elements of each line
        
        for j in range(n):
            # Finding the value of each element        
            elementValue = (min(min(i, n - i - 1), min(j, n - j - 1))) + 1 # Here We need to Add 1 because the index starts at 0
            
            if j == 0:
                line_elements.append(f'{elementValue:3d}') # Adding the element to the list with 3 digits
            else:
                line_elements.append(f'{elementValue:4d}') # Adding the element to the list with 4 digits
        
        # Printing the line
        print(''.join(line_elements))
        
    print() # Adding an empty line
        
        
# By: Fernando Serra
# https://github.com/fernandosserra