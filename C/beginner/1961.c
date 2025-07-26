// https://judge.beecrowd.com/pt/problems/view/1961
// Pula Sapo

// Libraries
#include <stdio.h>
#include <stdlib.h>

// Main
int main (){

    int jump, pipes;
    scanf("%d %d", &jump, &pipes);

    // For the pipes we will create a dynamic array:
    int* pipesSize = (int*) malloc(pipes * sizeof(int));
    
    if (pipesSize == NULL){
        return 1;
    } else {
        for (int i = 0; i < pipes; i++){
            scanf("%d", &pipesSize[i]);
        }
    }

    for (int i = 1; i < pipes; i++){

        int diff = abs(pipesSize[i] - pipesSize[i-1]);

        if (diff > jump){
            printf("GAME OVER\n");
            return 0;
        }
    }

    printf("YOU WIN\n");

    // Cleaning up allocated memory
    free(pipesSize);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra