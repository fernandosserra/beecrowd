// https://judge.beecrowd.com/pt/problems/view/1175
// Troca em Vetor I

// Libs
#include <stdio.h>

// Main function
int main(){
    // Variables
    int usrVec[20], i, j, aux;

    // Input
    for(i = 0; i < 20; i++){
        scanf("%d", &usrVec[i]);
    }
    // Swap elements
    for(i = 0, j = 19; i < j; i++, j--){
        aux = usrVec[i];
        usrVec[i] = usrVec[j];
        usrVec[j] = aux;
    }

    // Output
    for(i = 0; i < 20; i++){
        printf("N[%d] = %d\n", i, usrVec[i]);
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra