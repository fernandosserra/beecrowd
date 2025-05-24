/*Including Libraries*/
#include <stdio.h>
#include <math.h>

/*Main Function*/
int main (){
    /*Variable declaration and initialization*/
    double PI = 3.14159;
    double radius, volume;

    /*Requesting values to user*/
    scanf("%lf", &radius);

    /*Doing the calculations*/
    volume = (4.0 / 3.0) * PI * pow(radius, 3);

    /*Showing results*/
    printf("VOLUME = %.3lf\n", volume);

    /*Ending code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/