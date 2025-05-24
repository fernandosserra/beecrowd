# https://judge.beecrowd.com/pt/problems/view/1113

# Setting up the flag

control_flag = False

# Requesting

while control_flag is False:
    x, y = map(int, input().split())

    if x == y:
        control_flag = True
    else:
        if y > x:
            print("Crescente")
        else:
            print("Decrescente")
            
# By Fernando Serra
# https://github.com/fernandosserra