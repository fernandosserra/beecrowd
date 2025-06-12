# https://judge.beecrowd.com/pt/problems/view/1179
# Preenchimento de Vetor IV

# Creating a list to store the entries
entries = []

# Collecting 15 entries
for i in range(15):
    entries.append(int(input()))
    

# Initializing two lists for even and odd numbers
even_numbers = []
odd_numbers = []

# Distributing entries into even and odd lists
for i in range(15):
    if entries[i] % 2 == 0:
        even_numbers.append(entries[i])
        if len(even_numbers) == 5:
            for j in range(5):
                print(f"par[{j}] = {even_numbers[j]}")
            even_numbers = []
    else:
        odd_numbers.append(entries[i])
        if len(odd_numbers) == 5:
            for j in range(5):
                print(f"impar[{j}] = {odd_numbers[j]}")
            odd_numbers = []
            
# Printing any remaining odd numbers
for j in range(len(odd_numbers)):
    print(f"impar[{j}] = {odd_numbers[j]}")
# Printing any remaining even numbers
for j in range(len(even_numbers)):
    print(f"par[{j}] = {even_numbers[j]}")
    
# By: Fernando Serra
# https://github.com/fernandosserra