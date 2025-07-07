// https://judge.beecrowd.com/pt/problems/view/1828
// Bazinga!

// Libraries
#include <stdio.h>
#include <string.h>
#include <stdbool.h>


// Main
int main(){
    // Variable Initialization
    int testCases; // To get the number of iterations
    int scenario; // To print case number
    char shelly[10], raj[10]; // To store options
    scenario = 0; // To Count iterations

    scanf("%d", &testCases);

    for (int i = 0; i < testCases; i++){
        
        scanf("%s %s", &shelly, &raj);
        scenario++;
        
        if (strcmp(shelly, raj) == 0)
            printf("Caso #%d: De novo!\n", scenario);
        else if (strcmp(shelly, "Spock") == 0 && strcmp(raj, "pedra") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "lagarto") == 0 && strcmp(raj, "Spock") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "tesoura") == 0 && strcmp(raj, "lagarto") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "papel") == 00 && strcmp(raj, "Spock") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "tesoura") == 0 && strcmp(raj, "papel") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "papel") == 0 && strcmp(raj, "pedra") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "lagarto") == 0 && strcmp(raj, "papel") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "pedra") == 0 && strcmp(raj, "lagarto") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "Spock") == 0 && strcmp(raj, "tesoura") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else if (strcmp(shelly, "pedra") == 0 && strcmp(raj, "tesoura") == 0)
            printf("Caso #%d: Bazinga!\n", scenario);
        else
            printf("Caso #%d: Raj trapaceou!\n", scenario);
    }
    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra
