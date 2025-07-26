# https://judge.beecrowd.com/pt/problems/view/1960
# Numeração Romana para Números de Página

# Main
usrInput = int(input())

romans = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
numbers = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

for i in range(len(numbers)):
    while usrInput >= numbers[i]:
        usrInput -= numbers[i]
        print(romans[i], end="")
    
print()
        
# By: Fernando Serra
# https://github.com/fernandosserra