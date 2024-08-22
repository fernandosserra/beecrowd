/*Including Libs*/
#include <stdio.h>
#include <math.h>

/*Main Function*/
int main (){
    /*Variable declaration and initialization*/
    double x1, y1, x2, y2, distance;
    
    /*Requesting values to user*/
    scanf("%lf %lf" , &x1, &y1);
    scanf("%lf %lf" , &x2, &y2);

    /*Finding distance*/
    distance = ((x2 - x1) * (x2 - x1)) + ((y2 - y1) * (y2 - y1));
    distance = sqrt(distance);
    
    /*Printing distance*/
    printf("%.4lf\n", distance);

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/