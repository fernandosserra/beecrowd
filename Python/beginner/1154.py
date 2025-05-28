# https://judge.beecrowd.com/pt/problems/view/1154
# Idades

# Starting some variables
counter = 0
avg_ages = 0

# Iterating
while True:
    # Scanning
    age = int(input())
    # Testing if the typed age is negative
    if age < 0 & counter == 0:
        break        
    elif age < 0:
        break
    else:
        avg_ages += age
        age = 0
        counter += 1        

# Calculating average
avg_ages = avg_ages / counter

# Showing Results
print(f'{avg_ages:.2f}')

# By Fernando Serra & Daiane Bassetti
# https://github.com/fernandosserra
# https://github.com/DaianeBassetti