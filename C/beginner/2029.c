// https://judge.beecrowd.com/pt/problems/view/2029
// Reservatório de Mel

// Libraries
#include <stdio.h>
#include <math.h>


// Main
int main(){
    double volume, diameter, height, areaSize;
    const double pi = 3.14;

    while (scanf("%lf %lf", &volume, &diameter) != EOF){
        
        areaSize = pi * pow(diameter / 2, 2);
        height = volume / areaSize;

        printf("ALTURA = %.2lf\n", height);
        printf("AREA = %.2lf\n", areaSize);
    }

    return 0;
}