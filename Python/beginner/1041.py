"""
Leia 2 valores com uma casa decimal (x e y), que devem representar as coordenadas de um ponto em um plano. 
A seguir, determine qual o quadrante ao qual pertence o ponto, ou se está sobre um dos eixos cartesianos ou na origem (x = y = 0).

https://resources.beecrowd.com/gallery/images/problems/UOJ_1041.png

Se o ponto estiver na origem, escreva a mensagem “Origem”.

Se o ponto estiver sobre um dos eixos escreva “Eixo X” ou “Eixo Y”, conforme for a situação.

Entrada
A entrada contem as coordenadas de um ponto.

Saída
A saída deve apresentar o quadrante em que o ponto se encontra.

Aux:

Q1 = p1 > 0 e p2 > 0
Q2 = p1 < 0 e p2 > 0
Q3 = p1 < 0 e p2 < 0
Q4 = p1 > 0 e p2 < 0
Origem p1 = 0 and p2 = 0
Eixo X p1 = 0 and p2 <> 0
Eixo Y p2 = 0 and p1 <> 0

"""
# Requesting values
usr_p1, usr_p2 = map(float,input().split())

# Finding point
if usr_p1 > 0 and usr_p2 > 0:
    print("Q1")
elif usr_p1 < 0 and usr_p2 > 0:
    print("Q2")
elif usr_p1 < 0 and usr_p2 < 0:
    print("Q3")
elif usr_p1 > 0 and usr_p2 < 0:
    print("Q4")
elif usr_p1 == 0 and usr_p2 == 0:
    print('Origem')
elif usr_p1 == 0:
    print('Eixo Y')
elif usr_p2 == 0:
    print('Eixo X')
else:
    print('Erro!')
    
# By Fernando Serra
# https://github.com/fernandosserra