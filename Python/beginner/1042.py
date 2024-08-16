"""
Leia 3 valores inteiros e ordene-os em ordem crescente. No final, mostre os valores em ordem crescente, 
uma linha em branco e em seguida, os valores na sequência como foram lidos.

Entrada
A entrada contem três números inteiros.

Saída
Imprima a saída conforme foi especificado.
"""
# Request and assign
usr_input = [int(x) for x in input().strip().split(' ')]
to_sort = usr_input[:]

# sorting
to_sort.sort()

# showing
for i in range(3):
    print(to_sort[i])
print()
for i in range(3):
    print(usr_input[i])
    
# By Fernando Serra
# https://github.com/fernandosserra