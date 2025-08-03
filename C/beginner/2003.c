// https://judge.beecrowd.com/pt/problems/view/2003
// Domingo de Manhã

// Libraries
#include <stdio.h>

// Main
int main(){
    int hour, minute, maxDelay;
    char point;

    while (scanf("%d%c%d", &hour, &point, &minute) != EOF){
        printf("Atraso maximo: ");
        if (hour < 7 || (hour == 7 && minute == 0)){
            printf("0\n");
        }
        else {
            maxDelay = (hour - 7) * 60 + minute;
            printf("%d\n", maxDelay);
        }
    }

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra