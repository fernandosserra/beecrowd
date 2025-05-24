# https://judge.beecrowd.com/pt/problems/view/1101
# Requesting pairs to user
control_flag = True

while control_flag is True:
    a, b = map(int, input().split())
    if a <= 0 or b <= 0:
        control_flag = False
        break
    # Doing the calculations
    if a > b:
        a, b = b, a
    
    print(f'{" ".join([str(x) for x in range(a, b + 1)])} Sum={sum(range(a, b + 1))}')

# I looked for a little help to format the print at the end. Thank you xTecna (https://github.com/xTecna)     
# By Fernando Serra
# https://github.com/fernandosserra
