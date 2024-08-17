/*Including Libraries*/
#include <stdio.h>

/*Main Function*/

int main() {
    /*Variable declaration and initialization*/
    float a, b, c, media;

    /*Requesting values to user*/
    scanf("%f", &a);
    scanf("%f", &b);
    scanf("%f", &c);

    /*Doing the calculations*/
    media = ((a * 2) + (b * 3) + (c * 5)) / 10;

    /*Showing results*/
    printf("MEDIA = %.1f\n", media);

    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/