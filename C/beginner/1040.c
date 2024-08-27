/*https://judge.beecrowd.com/pt/problems/view/1040*/
/*Including stdio*/
#include <stdio.h>

/*Main function*/
int main() {
    /*Initializing variables*/
    double n1, n2, n3, n4, nex, media;

    /*Scanning*/
    scanf("%lf %lf %lf %lf", &n1, &n2, &n3, &n4);
    
    /*Finding media*/
    media = ((n1*2)+(n2*3)+(n3*4)+(n4*1))/10;

    /*Finding aprovation status*/
    if (media >= 7.0) {
        printf("Media: %.1lf\n", media);
        printf("Aluno aprovado.\n");
    } else if (media >= 5.0 && media <= 6.9) {
        printf("Media: %.1lf\n", media);
        printf("Aluno em exame.\n");
        scanf("%lf", &nex);
        printf("Nota do exame: %.1lf\n", nex);
        media = ((media + nex) / 2);
        if (media >= 5.0) {
            printf("Aluno aprovado.\n");
            printf("Media final: %.1lf\n", media);
        } else {
            printf("Aluno reprovado.\n");
            printf("Media final: %.1lf\n", media);
        }
    } else {
        printf("Media: %.1lf\n", media);
        printf("Aluno reprovado.\n");
    }

    /*Ending code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/