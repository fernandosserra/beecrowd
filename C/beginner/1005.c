/*Including Libraries*/
#include <stdio.h>

/*Main Function*/

int main() {
    /*Variable declaration and initialization*/
    float a, b, media;

    /*Requesting values to user*/
    scanf("%f", &a);
    scanf("%f", &b);

    /*Doing the calculations*/
    media = ((a * 3.5) + (b * 7.5)) / 11;

    /*Showing results*/
    printf("MEDIA = %.5f\n", media);

    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/