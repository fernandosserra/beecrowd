# Defining List;
user_values = []

# Defining Controls
control_bucket = 0
control_pos = 0

# Requesting values;
for i in range(100):
    user_values.append(int(input()))

# Iterating to find the Highest value in user_values;
for i in range(len(user_values)):
    if user_values[i] > control_bucket:
        control_bucket = user_values[i]
        control_pos = i + 1

# Showing results;
print(control_bucket)
print(control_pos)

# By Fernando Serra
# https://github.com/fernandosserra