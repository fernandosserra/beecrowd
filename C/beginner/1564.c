// https://judge.beecrowd.com/pt/problems/view/1564
// Vai Ter Copa?

// Libraries
#include <stdio.h>

// Main
int main(){
    int usrInput;

    // Iterating
    while (scanf("%d", &usrInput) != EOF){
        if (usrInput == 0){
            printf("vai ter copa!\n");
        } else {
            printf("vai ter duas!\n");
        }
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra