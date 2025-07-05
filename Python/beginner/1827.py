# https://judge.beecrowd.com/pt/problems/view/1827
# Matriz Quadrdada IV

# Loop to read n until EOF
while True:
    try:
        n = int(input())
    except EOFError:
        break
    except ValueError:
        continue
    
    startInner = n // 3
    endInner = n - 1 - (n // 3)
    mid = n // 2
    
    # Loop to print the matrix
    for rows in range(n):
        for columns in range(n):
            # Central Point. Needs to be found first
            if rows == mid and columns == mid:
                print(4, end='')
            # Inner Matrix
            elif rows >= startInner and rows <= endInner and columns >= startInner and columns <= endInner: 
                print(1, end='')
            # Main Diagonal
            elif rows == columns: 
                print(2, end='')
            # Secondary Diagonal    
            elif rows + columns == n - 1: 
                print(3, end='')
            # Other positions
            else: 
                print(0, end='')
        print()
    print()
# By: Fernando Serra
# https://github.com/fernandosserra