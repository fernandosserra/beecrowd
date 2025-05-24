# https://judge.beecrowd.com/pt/problems/view/1114

# Planting the flag
access_granted = False

# Iterating
while access_granted is False:
    password = int(input())
    
    if password == 2002:
        access_granted = True
        print("Acesso Permitido")
    else:
        print("Senha Invalida")
        
# By Fernando Serra
# https://github.com/fernandosserra