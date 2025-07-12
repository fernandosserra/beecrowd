# https://judge.beecrowd.com/pt/problems/view/1864
# Nossos Dias Nunca Voltarão

# Main Code
usrInput = int(input())

message = "LIFE IS NOT A PROBLEM TO BE SOLVED"

if usrInput > len(message):
    usrInput = len(message)

for i in range(usrInput):
    print(message[i], end="")
    
print()
    
# By: Fernando Serra
# https://github.com/fernandosserra