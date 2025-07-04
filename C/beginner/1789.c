// https://judge.beecrowd.com/pt/problems/view/1789
// A Corrida de Lesmas

// Libraries
#include <stdio.h>
#include <stdlib.h>

// Main
int main(){

    // Slug Cases
    int slugCases;
    int maxSpeed = 0;
    
    // Getting Slug Team
    while (scanf("%d", &slugCases) != EOF){
        maxSpeed = 0;
        // Creating a Dynamic Array
        int* slugSpeeds = (int*) malloc(slugCases * sizeof(int));
        if (slugSpeeds == NULL){
            return 1;
        }

        // Iterating
        for (int i = 0; i < slugCases; i++){
            // Scanning Speeds
            scanf("%d", &slugSpeeds[i]);        
            
            // Testing MaxSpeed:
            if (slugSpeeds[i] > maxSpeed){            
                maxSpeed = slugSpeeds[i];
            }
        }

        // Testing Speed Level
        if (maxSpeed < 10){
            printf("1\n");
        } else if (maxSpeed >= 10 && maxSpeed < 20){
            printf("2\n");
        } else {
            printf("3\n");
        }

        // Cleaning up allocated memory
        free(slugSpeeds);
    }
    // Ending
    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra