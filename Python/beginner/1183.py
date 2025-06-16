# https://judge.beecrowd.com/pt/problems/view/1183
# Acima da Diagonal Principal

# Constants
M_SIZE = 12

# Function to find our Results
def calculateAboveDiagonal(matrix, operation):
    total_sum = 0.0
    count = 0 # To Count for Average
    
    # Iterating between matrix to find if the numbers are above the diagonal
    for i in range(M_SIZE):
        for j in range(i + 1, M_SIZE):
            total_sum += matrix[i][j]
            count += 1
            
    if operation == 'M':
        # Preventing division by 0
        if count == 0:
            return 0.0
        return total_sum / count
    else:
        return total_sum
            
# Getting Operation
operation = input().strip()

# Getting Matrix values
ourMatrix = []
for i in range(12):
    current_row = []
    for j in range(12):
        value = float(input())
        current_row.append(value)
    ourMatrix.append(current_row)
    
    
# Calculating sum or average
result = calculateAboveDiagonal(ourMatrix, operation)

# Showing
print(f"{result:.1f}")


# By: Fernando Serra
# https://github.com/fernandosserra