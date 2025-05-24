# Declaring control variables
rabbits = 0
mouses = 0
frogs = 0
specimens = 0


# Requesting test cases to user
test_cases = int(input())

# Iterating through test cases
for _ in range(test_cases):
    temp_qt, temp_spec = input().split()
    if temp_spec == 'C':
        rabbits += int(temp_qt)
        specimens += int(temp_qt)
    elif temp_spec == 'R':
        mouses += int(temp_qt)
        specimens += int(temp_qt)
    elif temp_spec == 'S':
        frogs += int(temp_qt)
        specimens += int(temp_qt)

# Showing results
print(f"Total: {specimens} cobaias")
print(f"Total de coelhos: {rabbits}")
print(f"Total de ratos: {mouses}")
print(f"Total de sapos: {frogs}")
print(f"Percentual de coelhos: {(rabbits / specimens) * 100:.2f} %")
print(f"Percentual de ratos: {(mouses / specimens) * 100:.2f} %")
print(f"Percentual de sapos: {(frogs / specimens) * 100:.2f} %")

# By Fernando Serra
# https://github.com/fernandosserra