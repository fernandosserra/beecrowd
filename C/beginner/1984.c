// https://judge.beecrowd.com/pt/problems/view/1984
// O Enigma da Pronalândia

// Libraries
#include <stdio.h>
#include <string.h>


// Main
int main(){

    char pronMessage[100];

    scanf("%s", pronMessage);

    for (int i = strlen(pronMessage) - 1; i >= 0; i--){
        printf("%c", pronMessage[i]);
    }
    printf("\n");

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra