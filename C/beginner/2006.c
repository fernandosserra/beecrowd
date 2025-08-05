// https://judge.beecrowd.com/pt/problems/view/2006
// Identificando o Chá

// Libraries
#include <stdio.h>

// Main
int main(){
    int teaType, teaGuess, totalRightGuesses;

    scanf("%d", &teaType);
    totalRightGuesses = 0;

    for (int i = 0; i < 5; i++){
        scanf("%d", &teaGuess);

        if (teaGuess == teaType){
            totalRightGuesses += 1;
        }
    }

    printf("%d\n", totalRightGuesses);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra