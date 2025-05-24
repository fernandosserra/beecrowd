"""
Neste problema, você deverá ler 3 palavras que definem o tipo de animal possível segundo o esquema abaixo, da esquerda para a direita.  
Em seguida conclua qual dos animais seguintes foi escolhido, através das três palavras fornecidas.
"""
# Requesting
master_type = input()
sub_type = input()
diet_type = input()

# Finding and showing
if master_type == 'vertebrado':
    if sub_type == 'ave':
        if diet_type == 'carnivoro':
            print('aguia')
        else:
            print('pomba')
    else:
        if diet_type == 'onivoro':
            print('homem')
        else:
            print('vaca')
else:
    if sub_type == 'inseto':
        if diet_type == 'hematofago':
            print('pulga')
        else:
            print('lagarta')
    else:
        if diet_type == 'hematofago':
            print('sanguessuga')
        else:
            print('minhoca')
            
# By Fernando Serra
# https://github.com/fernandosserra