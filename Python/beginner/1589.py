# https://judge.beecrowd.com/pt/problems/view/1589
# Bob Conduite

# Main Code
cases = int(input())

for i in range(cases):
    try:
        wire1, wire2 = map(int, input().split())
        print(wire1 + wire2)
    except EOFError:
        break
    except ValueError:
        break
        
# By: Fernando Serra
# https://github.com/fernandosserra