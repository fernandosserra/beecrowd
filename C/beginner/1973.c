// https://judge.beecrowd.com/pt/problems/view/1973
// Jornada nas Estrelas

// Libraries
#include <stdio.h>

int main() {
    int num_estrelas;
    long long int ovelhas_restantes = 0; // Vamos calcular isso no final, direto
    int estrelas_atacadas = 0; // Contagem das estrelas únicas atacadas

    scanf("%d", &num_estrelas);

    // Usamos static para arrays grandes para evitar stack overflow.
    static int sheeps[1000000];
    static int visitadas[1000000]; // 0 para não visitada, 1 para visitada

    // Leitura das ovelhas e inicialização do array de visitadas
    for (int i = 0; i < num_estrelas; i++) {
        scanf("%d", &sheeps[i]);
        visitadas[i] = 0; // Nenhuma estrela visitada no início
    }

    int pos_atual = 0; // Posição inicial do atacante

    // Loop principal da jornada
    while (pos_atual >= 0 && pos_atual < num_estrelas) {
        // Se a estrela atual já não tem ovelhas, a jornada acaba.
        if (sheeps[pos_atual] == 0) {
            // Se já não tinha ovelhas, o atacante simplesmente passa e a jornada termina
            break; 
        }

        // Se esta estrela ainda não foi visitada, marque-a e conte
        if (visitadas[pos_atual] == 0) {
            visitadas[pos_atual] = 1;
            estrelas_atacadas++; // Uma nova estrela foi atacada!
        }

        // Rouba uma ovelha da estrela atual
        sheeps[pos_atual]--; 

        // Decide para onde ir com base na paridade original da estrela
        // O Beecrowd geralmente implica que a decisão de movimento
        // é baseada no estado original da estrela ANTES do roubo.
        // No entanto, para este problema específico, a paridade
        // deve ser considerada APÓS o roubo da ovelha, ou seja,
        // a paridade da estrela *antes* dela ter sido esvaziada.
        // Se o número de ovelhas na estrela original era X,
        // e ele rouba 1, fica X-1. A regra de movimento
        // "se as ovelhas atuais na estrela são pares ou ímpares"
        // refere-se ao estado *antes* de ele roubar a ovelha.
        // No problema, "a quantidade de carneiros existentes naquele planeta"
        // significa antes do roubo.
        
        // Vamos reajustar o movimento para ser baseado no estado *antes* do roubo
        // (ou seja, se sheeps[pos_atual]+1 era par/impar antes do decremento)
        if ((sheeps[pos_atual] + 1) % 2 == 0) { // Era par, move para a esquerda
            pos_atual--;
        } else { // Era ímpar, move para a direita
            pos_atual++;
        }
    }

    // Calcular o total de ovelhas restantes em todas as estrelas
    for (int i = 0; i < num_estrelas; i++) {
        ovelhas_restantes += sheeps[i];
    }

    // Saída final no formato pedido: estrelas_atacadas, ovelhas_restantes
    printf("%d %lld\n", estrelas_atacadas, ovelhas_restantes);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra