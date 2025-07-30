# https://judge.beecrowd.com/pt/problems/view/1973
# Jornada nas Estrelas

def main():
    num_estrelas = int(input())
    
    # Leitura das ovelhas
    sheeps = list(map(int, input().split()))
    visitadas = [0] * num_estrelas  # 0 para não visitada, 1 para visitada
    
    pos_atual = 0
    estrelas_atacadas = 0

    while 0 <= pos_atual < num_estrelas:
        if sheeps[pos_atual] == 0:
            break  # A estrela atual já não tem ovelhas, fim da jornada

        if visitadas[pos_atual] == 0:
            visitadas[pos_atual] = 1
            estrelas_atacadas += 1  # Nova estrela atacada

        # Decide o movimento com base na paridade *antes* de roubar
        ovelhas_antes = sheeps[pos_atual]

        # Rouba uma ovelha
        sheeps[pos_atual] -= 1

        # Movimento
        if ovelhas_antes % 2 == 0:  # Par → esquerda
            pos_atual -= 1
        else:  # Ímpar → direita
            pos_atual += 1

    ovelhas_restantes = sum(sheeps)

    print(f"{estrelas_atacadas} {ovelhas_restantes}")

if __name__ == "__main__":
    main()

# By: Fernando Serra
# https://github.com/fernandosserra