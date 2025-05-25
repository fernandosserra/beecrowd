# https://judge.beecrowd.com/pt/problems/view/1150
# Ultrapassando Z

# Taking first input
usr_input1 = int(input())

# Taking second input
while True:
    usr_input2 = int(input())
    if usr_input2 > usr_input1:
        break

# Starting Counters and Sum    
usr_sum = usr_input1
counter = 1

# Calculating
while usr_sum <= usr_input2:
    usr_input1 += 1
    usr_sum += usr_input1
    counter += 1

# Printing
print(counter)

# By Fernando Serra
# https://github.com/fernandosserra