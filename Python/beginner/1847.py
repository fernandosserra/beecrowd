# https://judge.beecrowd.com/pt/problems/view/1847
# Bem-vindos e Bem-vindas ao Inverno!

# Getting Temperatures
d1, d2, d3 = map(int, input().split())

# Evaluating Winter Mood

# Case 1: Temperature Falls from D1 to d2
if d1 > d2:
    if d2 > d3:
        if ((d2 - d3) < (d1 - d2)):
            print(":)")
        else:
            print(":(")
    else:
        print(":)")
# Case 2: Temperature rising from D1 to d2
elif d1 < d2:
    if d2 < d3:
        if ((d3 - d2) < (d2 - d1)):
            print(":(")
        else:
            print(":)")
    else:
        print(":(")
# Case 3: Stable temperature from d1 to d2
else:
    if (d2 < d3):
        print(":)")
    elif (d2 > d3):
        print(":(")
    else:
        print(":(")


# By: Fernando Serra
# https://github.com/fernandosserra