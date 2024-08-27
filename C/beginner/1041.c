/*https://judge.beecrowd.com/pt/problems/view/1041*/
/*Including stdio*/
#include <stdio.h>

/*Main function*/
int main() {
    /*Initializing variables*/
    float x, y;

    /*Scanning*/
    scanf("%f %f", &x, &y);

    /*Finding quadrant*/
    if (x > 0 && y > 0) {
        printf("Q1\n");
    } else if (x < 0 && y > 0) {
        printf("Q2\n");
    } else if (x < 0 && y < 0) {
        printf("Q3\n");
    } else if (x > 0 && y < 0) {
        printf("Q4\n");
    } else if (x == 0 && y == 0) {
        printf("Origem\n");
    } else if (x == 0) {
        printf("Eixo Y\n");
    } else if (y == 0) {
        printf("Eixo X\n");
    } else {
        printf("Erro\n");
    }

    /*Ending*/
    return 0;
}