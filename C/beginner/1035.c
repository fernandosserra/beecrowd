/*https://judge.beecrowd.com/pt/problems/view/1035*/
/*Includes*/
#include <stdio.h>

/*Main Function*/
int main(){
    /*Variables*/
    int A, B, C, D;

    /*Scanning values*/
    scanf("%d %d %d %d", &A, &B, &C, &D);

    /*Testing conditions and showing results*/
    if ((B > C) && (D > A) && ((C + D) > (A + B) && ((C > 0 ) && (D > 0))) && (A % 2 == 0)){
        printf("Valores aceitos\n");
    } else {
        printf("Valores nao aceitos\n");
    }

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/