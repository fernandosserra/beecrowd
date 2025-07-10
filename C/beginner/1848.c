// https://judge.beecrowd.com/pt/problems/view/1848
// Corvo Contador

// Libraries
#include <stdio.h>
#include <string.h>

// Function Prototypes
int bValue(char blink); // To convert blinks into binaries

int converts(char *num); // To Find answers


// Main
int main(){
    int sum = 0;
    char line[10];

   
    int caw_count = 0; // To count screams

    while (fgets(line, sizeof(line), stdin) != NULL) { // Use fgets to read the entire line including '\n'

        line[strcspn(line, "\n")] = 0; // Removes '\n'

        if(strcmp(line, "caw caw") == 0){
            printf("%d\n", sum);
            sum = 0; // Reseting sum to the next blink set
            caw_count++;
            if (caw_count == 3) { // Ends if three numbers are blinked
                break;
            }
        } else {
            sum += converts(line);
        }
    }

    return 0;
}


int bValue(char blink){
    switch(blink){
        case '-': return 0;
        case '*': return 1;
        default: return 0; // To unexepected characters
    }
}

int converts(char *num){
    int answer = 0;
    // Reading the string from left to right
    for (int i = 0; i < strlen(num); ++i){
        answer = answer * 2 + bValue(num[i]);
    }
    return answer;
}

// By: Fernando Serra (Thanks xTecna for the solution to this one!)
// https://github.com/fernandosserra