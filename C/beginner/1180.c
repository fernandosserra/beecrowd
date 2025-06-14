// https://judge.beecrowd.com/pt/problems/view/1180
// Menor e Posição

// Libraries
#include <stdio.h>

// Main function
int main(){

    // Variables
    int arraySize, indexes, smallest, position;

    // Input
    scanf("%d", &arraySize);

    // Declare the vector with the specified size
     int* ourArray = (int*) malloc(arraySize * sizeof(int));
    

    // Iterate to read the vector elements
    for(indexes = 0; indexes < arraySize; indexes++){
        scanf("%d", &ourArray[indexes]);
    }

    // Initialize the smallest value and its position
    smallest = ourArray[0];
    position = 0;
    // Find the smallest value and its position
    for(indexes = 1; indexes < arraySize; indexes++){
        if(ourArray[indexes] < smallest){
            smallest = ourArray[indexes];
            position = indexes;
        }
    }
    // Output the smallest value and its position
    printf("Menor valor: %d\n", smallest);
    printf("Posicao: %d\n", position);

    // Cleaning up allocated memory
    free(ourArray);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra