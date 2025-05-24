"""
Leia um número inteiro que representa um código de DDD para discagem interurbana. 
Em seguida, informe à qual cidade o DDD pertence, considerando a tabela abaixo:

Entrada
A entrada consiste de um único valor inteiro.

Saída
Imprima o nome da cidade correspondente ao DDD existente na entrada. 
Imprima DDD nao cadastrado caso não existir DDD correspondente ao número digitado.

"""
# def
cities = {61: 'Brasilia', 
          71: 'Salvador', 
          11: 'Sao Paulo',
          21: 'Rio de Janeiro',
          32: 'Juiz de Fora',
          19: 'Campinas',
          27: 'Vitoria',
          31: 'Belo Horizonte'
          }

# requesting
ddd = int(input())

# showing
if ddd in cities:
    print(cities[ddd])
else:
    print('DDD nao cadastrado')
    
# By Fernando Serra
# https://github.com/fernandosserra