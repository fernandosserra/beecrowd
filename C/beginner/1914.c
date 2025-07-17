// https://judge.beecrowd.com/pt/problems/view/1914
// De Quem é a Vez?

// Libraries
#include <stdio.h>
#include <string.h>

// Main
int main(){

    int testCases;

    char playerOne[100], playerTwo[100];
    char p1Choice[100], p2Choice[100];

    scanf("%d", &testCases);

    for (int i = 0; i < testCases; i++){
        
        int first, second = 0;
        
        scanf("%s %s %s %s", playerOne, p1Choice, playerTwo, p2Choice);
        
        scanf("%d %d", &first, &second);

        if (strcmp(p1Choice, "PAR") == 0 && (first + second) % 2 == 0){
            printf("%s\n", playerOne);
        } else if (strcmp(p1Choice, "IMPAR") == 0 && (first + second) % 2 != 0) {
            printf("%s\n", playerOne);
        }
        else{
            printf("%s\n", playerTwo);
        }
        
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra