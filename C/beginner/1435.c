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

    while (scanf("%d", &n) != EOF && n != 0) // Continue reading until EOF (end of file) or 0
    {
        for (int i = 0; i < n; i++) // Iterate between rows
        {
            for (int j = 0; j < n; j++) // Iterate between columns
            {
                // Logic to find the value of each element
                int value = min(min(i, n - 1 - i), min(j, n - 1 - j)) + 1;

                // This fucking format is the key of this problem
                if (j == 0) { // If is the first element of the line
                    printf("%3d", value); // print with 3 digits (ex: " 1", "10")
                } else { // For the other elements
                    printf("%4d", value); // print with 4 digits (ex: " 1  ", "10  ")
                }
            }
            printf("\n"); // Breaking the LAWne
        }
        printf("\n"); // With line after each matrix
        
    }

    return 0;
}

// By Fernando Serra (Most of the code is built with help of Washu-sama)
// https://github.com/fernandosserra