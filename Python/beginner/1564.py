# https://judge.beecrowd.com/pt/problems/view/1564
# Vai Ter Copa?

# Main Code

while True:
    try:    
        n = int(input())
        if n == 0:
            print("vai ter copa!")
        else:
            print("vai ter duas!")
    except EOFError:
        break
    except ValueError:
        break
        
# By: Fernando Serra
# https://github.com/fernandosserra