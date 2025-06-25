// https://judge.beecrowd.com/pt/problems/view/1435
// Matriz Quadrada I

// Libraries
#include <stdio.h>

// Função auxiliar para encontrar o mínimo entre dois números, como no código de referência
int min(int a, int b)
{
    return a < b ? a : b;
}

// Main function
int main()
{
    int n;
    // Removendo 'up_distance', etc., pois a função min já faz o trabalho
    // Mantendo a clareza para a transição
    // int up_distance, down_distance, left_distance, right_distance, min_distance;
    
    // Nenhuma flag 'alrdy_printed' é necessária, pois o problema espera uma linha em branco após CADA matriz
    // int alrdy_printed = 0; 

    while (scanf("%d", &n) != EOF && n != 0) // Loop para continuar lendo N até EOF ou N=0
    {
        // Esta linha foi removida pois o problema espera um \n após CADA matriz,
        // incluindo a última. A última linha em branco é gerada pelo printf("\n") externo.
        // if (alrdy_printed) {
        //     printf("\n");
        // }

        for (int i = 0; i < n; i++) // Percorre as linhas
        {
            for (int j = 0; j < n; j++) // Percorre as colunas
            {
                // Sua lógica original e brilhante para calcular o valor da célula!
                int value = min(min(i, n - 1 - i), min(j, n - 1 - j)) + 1;

                // A MÁGICA DA FORMATAÇÃO DO BEECROWD 1435:
                if (j == 0) { // Se for o PRIMEIRO elemento da linha (coluna 0)
                    printf("%3d", value); // Imprime com 3 de largura (ex: "  1")
                } else { // Para os OUTROS elementos da linha (j > 0)
                    printf("%4d", value); // Imprime com 4 de largura (ex: "   1", "  10")
                }
            }
            printf("\n"); // Quebra de linha APÓS cada linha da matriz
        }
        printf("\n"); // LINHA EM BRANCO APÓS CADA MATRIZ (inclusive a última)
        
        // Esta linha também não é mais necessária, pois a lógica acima já resolve o espaçamento entre matrizes
        // alrdy_printed = 1; 
    }

    return 0;
}

// By Fernando Serra (com a ajuda de Washu Hakubi, a cientista genial!)
// https://github.com/fernandosserra