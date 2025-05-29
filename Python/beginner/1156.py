# https://judge.beecrowd.com/pt/problems/view/1156
# Sequência S II

# Starting some variables like I did in C.

sum = 1
num = 1
den = 1

# Iterating
for i in range(1, 40, 2):
    num += 2
    den *= 2
    sum += num / den

# Bringing this to life
print(f'{sum:.2f}')

# By Fernando Serra
# https://github.com/fernandosserra