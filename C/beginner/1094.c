// https://judge.beecrowd.com/pt/problems/view/1094
// Experiencias

// Libs
#include <stdio.h>

// Main
int main() {
    // Declaring control variables
    int rabbits = 0;
    int mouses = 0;
    int frogs = 0;
    int specimens = 0;
    int test_cases, temp_qt;
    char temp_spec;

    // Requesting the number of test cases from the user
    scanf("%d", &test_cases);

    // Iterating through the test cases
    for (int i = 0; i < test_cases; i++) {
        scanf("%d %c", &temp_qt, &temp_spec);
        if (temp_spec == 'C') {
            rabbits += temp_qt;
            specimens += temp_qt;
        } else if (temp_spec == 'R') {
            mouses += temp_qt;
            specimens += temp_qt;
        } else if (temp_spec == 'S') {
            frogs += temp_qt;
            specimens += temp_qt;
        }
    }

    // Showing the results
    printf("Total: %d cobaias\n", specimens);
    printf("Total de coelhos: %d\n", rabbits);
    printf("Total de ratos: %d\n", mouses);
    printf("Total de sapos: %d\n", frogs);
    printf("Percentual de coelhos: %.2f %%\n", (rabbits / (float)specimens) * 100);
    printf("Percentual de ratos: %.2f %%\n", (mouses / (float)specimens) * 100);
    printf("Percentual de sapos: %.2f %%\n", (frogs / (float)specimens) * 100);

    return 0;
}

// By Fernando Serra
// https://github.com/fernandosserra