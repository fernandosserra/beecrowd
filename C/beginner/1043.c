/*https://judge.beecrowd.com/pt/problems/view/1043*/
/*Including libs*/
#include <stdio.h>

/*Main program body*/
int main(){
    /*Starting Code and variables*/
    float a, b, c;
    float area, perimeter;

    /*Scanning values*/
    scanf("%f %f %f", &a, &b, &c);

    /*Finding perimeter and area*/
    perimeter = a + b + c;
    area = ((a + b) * c) / 2;

    /*Finding if is a triangle or a trapezium*/
    if ((a + b )> c  && (a + c) > b  && (b + c) > a){
        /*Showing results*/
        printf("Perimetro = %.1f\n", perimeter);
    } else {
        /*Showing results*/
        printf("Area = %.1f\n", area);
    }

    /*Ending Code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/