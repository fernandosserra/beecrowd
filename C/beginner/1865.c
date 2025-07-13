// https://judge.beecrowd.com/pt/problems/view/1865
// Mjolnir

// Libs
#include <stdio.h>
#include <string.h>


// Main
int main (){

    int testCases;
    int strength;
    char heroName[100];
    
    scanf("%d", &testCases);
    
    for (int i = 0; i < testCases; i++){
        scanf("%s %d", heroName, &strength); // Read string directly
        if (strcmp(heroName, "Thor") == 0 && (strength >= 1)){ // Pass the string
            printf("Y\n");
        } else {
            printf("N\n");
        }
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra