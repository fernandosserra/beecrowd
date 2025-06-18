# https://judge.beecrowd.com/pt/problems/view/1185
# Acima da Diagonal Secundária

# Constants
M_SIZE = 12

# Function to find our Results
def calculateAboveSecDiagonal(matrix, operation):
    total_sum = 0.0
    
    # Iterating between matrix to find if the numbers are above the diagonal
    for i in range(M_SIZE):
        for j in range(M_SIZE):
            if (i + j) < (M_SIZE - 1):
                total_sum += matrix[i][j]
            
    if operation == 'M':
        return total_sum / (M_SIZE * (M_SIZE - 1) / 2.0)
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
result = calculateAboveSecDiagonal(ourMatrix, operation)

# Showing
print(f"{result:.1f}")


# By: Fernando Serra
# https://github.com/fernandosserra