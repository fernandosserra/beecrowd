# https://judge.beecrowd.com/pt/problems/view/1182
# Coluna na Matriz

# Getting column number:
ourColumn = int(input())

# Getting operation type:
operation = input().strip()

# Getting a matrix of 12x12:
ourMatrix = []

# Loop 12 times for rows
for i in range(12):
    current_row = []
    # Loop 12 times for columns within each row
    for j in range(12):
        # Read one number per line
        value = float(input())  # Reading a float per row!
        current_row.append(value)
    ourMatrix.append(current_row)

# Creating sum or average:
result = 0.0    # Declaring and initializing result

# Accessing the specified column and calculating the sum or average:
for i in range(12):
    result += ourMatrix[i][ourColumn]
if operation == 'S':
    print(f"{result:.1f}")   # Printing the sum
elif operation == 'M':
    result /= 12
    print(f"{result:.1f}")  # Printing the average


# By: Fernando Serra
# https://github.com/fernandosserra    