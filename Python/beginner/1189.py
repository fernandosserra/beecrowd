# https://judge.beecrowd.com/pt/problems/view/1189
# Área esquerda

# Constants
M_SIZE = 12

# Function to find our Results
def calculateLeftArea(matrix, operation):
    total_sum = 0.0
    count = 0
    
    # Iterating between matrix to find if the numbers are in the specific left area
    for i in range(M_SIZE):
        for j in range(M_SIZE):
            if (j < i and j < (M_SIZE - 1 - i)):
                total_sum += matrix[i][j]
                count += 1
            
    if operation == 'M':
        if count == 0:
            return 0.0
        else:
            return total_sum / count
    else:
        return total_sum
            
# Getting Operation
operation = input().strip()

# Getting Matrix values
ourMatrix = []
for i in range(M_SIZE):
    current_row = []
    for j in range(M_SIZE):
        value = float(input())
        current_row.append(value)
    ourMatrix.append(current_row)
    
    
# Calculating sum or average
result = calculateLeftArea(ourMatrix, operation)

# Showing
print(f"{result:.1f}")


# By: Fernando Serra
# https://github.com/fernandosserra