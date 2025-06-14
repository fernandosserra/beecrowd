# https://judge.beecrowd.com/pt/problems/view/1181
# Linha na Matriz

# Getting row number:
ourRow = int(input())

# Getting operation type:
operation = input().strip()

# Getting a matrix of 12x12:
matrix = []
# Loop 12 times for rows
for i in range(12):
    current_row = []
    # Loop 12 times for columns within each row
    for j in range(12):
        # Read one number per line
        value = float(input()) # <--- Reading a float per row!
        current_row.append(value)
    matrix.append(current_row)

# Creating sum or average:
result = 0.0

# Acessing the specified row and calculating the sum or average:
for j in range(12):
    result += matrix[ourRow][j]

if operation == 'S':
    print(f"{result:.1f}")
elif operation == 'M':
    result /= 12
    print(f"{result:.1f}")
    
# By: Fernando Serra
# https://github.com/fernandosserra