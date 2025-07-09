// https://judge.beecrowd.com/pt/problems/view/1847
// Bem-vindos e Bem-vindas ao Inverno!

// Libraries
#include <stdio.h>

// Main
int main() {
    int d1, d2, d3;

    scanf("%d %d %d", &d1, &d2, &d3);

    // Case 1: Temperature falls from d1 to d2
    if (d1 > d2) {
        if (d2 > d3) { // keeps falling
            if ((d2 - d3) < (d1 - d2)) { // It fell slower in the second time
                printf(":)");
            } else { // It fell fastar in the second time
                printf(":(");
            }
        } else { // Stopped falling or went up
            printf(":)");
        }
    }
    // Case 2: Temperature rising from d1 to d2
    else if (d1 < d2) {
        if (d2 < d3) { // keeps raising
            if ((d3 - d2) < (d2 - d1)) { // It went up slower the second time
                printf(":(");
            } else { // It went up faster the second time
                printf(":)");
            }
        } else { // Stopped rising or fell
            printf(":(");
        }
    }
    // Case 3: Stable temperature from d1 to d2
    else { // d1 == d2
        if (d2 < d3) { // Rise
            printf(":)");
        } else if (d2 > d3) { // Fall
            printf(":(");
        } else { // Stable
            printf(":(");
        }
    }

    printf("\n");

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra