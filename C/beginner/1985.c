// https://judge.beecrowd.com/pt/problems/view/1985
// MacPRONALTS


// Libraries
#include <stdio.h>

// Main
int main(){
    int productId, productsQtOrder, productsTotalQt;
    float productsTotalPrice = 0;

    scanf("%d", &productsTotalQt);

    for (int i = 0; i < productsTotalQt; i++){
        scanf("%d %d", &productId, &productsQtOrder);

        switch (productId){
            case 1001:
                productsTotalPrice += productsQtOrder * 1.50;
                break;
            case 1002:
                productsTotalPrice += productsQtOrder * 2.50;
                break;
            case 1003:
                productsTotalPrice += productsQtOrder * 3.50;
                break;
            case 1004:
                productsTotalPrice += productsQtOrder * 4.50;
                break;
            case 1005:
                productsTotalPrice += productsQtOrder * 5.50;
                break;
            default:
                productsTotalPrice += 0;
                break;
        }
    }

    printf("%.2f\n", productsTotalPrice);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra