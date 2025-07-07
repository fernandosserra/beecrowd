# https://judge.beecrowd.com/pt/problems/view/1828
# Bazinga!

# Test Cases
testCases = int(input())

for i in range(testCases):
    shelly, raj = input().split()
    
    if shelly == raj:
        print(f"Caso #{i + 1}: De novo!")
    elif shelly == "tesoura" and raj == "papel":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "papel" and raj == "pedra":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "pedra" and raj == "lagarto":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "lagarto" and raj == "Spock":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "Spock" and raj == "tesoura":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "tesoura" and raj == "lagarto":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "lagarto" and raj == "papel":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "papel" and raj == "Spock":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "Spock" and raj == "pedra":
        print(f"Caso #{i + 1}: Bazinga!")
    elif shelly == "pedra" and raj == "tesoura":
        print(f"Caso #{i + 1}: Bazinga!")
    else:
        print(f"Caso #{i + 1}: Raj trapaceou!")
        
# By: Fernando Serra
# https://github.com/fernandosserra