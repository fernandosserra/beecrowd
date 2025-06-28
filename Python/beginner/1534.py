# https://judge.beecrowd.com/pt/problems/view/1534
# Matriz 123

# Loop to read n until EOF
while True:
    try:
        n = int(input())
    except EOFError:
        break
    except ValueError:
        continue

    # Loop to print the matrix
    for i in range(n):
        for j in range(n):
            if i == n - 1 - j: # Needs to be evaluated first for find correct positions when an element attens condition to be on both diagonals
                print(2, end='')
            elif i == j: # Main Diagonal
                print(1, end='')
            else: # Other positions
                print(3, end='')
        print()
    
# By: Fernando Serra
# https://github.com/fernandosserra