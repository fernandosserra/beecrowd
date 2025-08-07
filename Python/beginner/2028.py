# https://judge.beecrowd.com/pt/problems/view/2028
# Sequência de Sequência

caseCount = 0

while True:
    try:
        usrInput = int(input())
        counter = 1;
        
        print(f"Caso {caseCount + 1}: ", end="")
        
        if usrInput == 0:
            print(f"{counter} numero")
        else:
            counter += (usrInput * (usrInput + 1) // 2)
            print(f"{counter} numeros")
            
        print("0", end="")

        for i in range(1, usrInput + 1):
            for _ in range(i):
                print(f" {i}", end="")
                
        print()
        print()
        caseCount += 1
        
    except EOFError:
        break
    except ValueError:
        break

# By: Fernando Serra
# https://github.com/fernandosserra