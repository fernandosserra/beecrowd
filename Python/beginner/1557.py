# https://judge.beecrowd.com/pt/problems/view/1557
# Matriz Quadrada III

while True: # This will iterate until n = 0
    # Getting the size of the matrix
    n = int(input())
    
    if n == 0: # Testing if n = 0
        break # Breaking the loop if n = 0
    
    maxValue = pow(2, (2 * n - 2))
    numDigits = 0
    
    if n == 1:
        numDigits =1
    else:
        tempMax = maxValue
        while tempMax > 0:
            tempMax //= 10
            numDigits += 1
    
    # Defining formats
    format_first_element = f'{{:>{numDigits}d}}'
    format_other_elements = f' {{:>{numDigits}d}}'
    
    # Printing the matrix
    for i in range(n):
    
        line_elements = [] # To store the elements of each line
        
        for j in range(n):
            # Finding the value of each element        
            elementValue = pow(2, (i + j)) # The element Values is equal 2 ^ (i - j)
            
            if j == 0:
                line_elements.append(format_first_element.format(int(elementValue))) # Adding the element to the list with 3 digits
            else:
                line_elements.append(format_other_elements.format(int(elementValue))) # Adding the element to the list with more than 3 digits
        
        # Printing the line
        print(''.join(line_elements))
        
    print() # Adding an empty line
        
        
# By: Fernando Serra
# https://github.com/fernandosserra