/*https://judge.beecrowd.com/pt/problems/view/1044*/

/*Includes*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Starting code*/

    /*Variables*/
    int a, b;

    /*Scanning values*/
    scanf("%d %d", &a, &b);

    /*Testing conditions and showing results*/
    if (a % b == 0 || b % a == 0){
        printf("Sao Multiplos\n");
    } else {
        printf("Nao sao Multiplos\n");
    }

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/