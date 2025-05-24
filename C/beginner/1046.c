/*https://judge.beecrowd.com/pt/problems/view/1046*/
/*Includes*/
#include <stdio.h>

/*Main*/
int main(){
    /*Variables*/
    int start_time, ending_time;

    /*Scanning values*/
    scanf("%d %d", &start_time, &ending_time);

    /*Testing conditions and showing results*/
    if (start_time < ending_time){
        printf("O JOGO DUROU %d HORA(S)\n", ending_time - start_time);
    } else if (start_time > ending_time){
        printf("O JOGO DUROU %d HORA(S)\n", 24 - start_time + ending_time);
    } else {
        printf("O JOGO DUROU 24 HORA(S)\n");
    }

    /*Ending Code*/
    return 0;
}


/*By Fernando Serra*/
/*https://github.com/fernandosserra*/