/*https://judge.beecrowd.com/pt/problems/view/1036*/
/*Includes*/
#include <stdio.h>
#include <math.h>

/*Main Function*/
int main(){
    /*Variables*/
    float a, b, c;
    float delta, r1, r2;
    
    /*Scanning values*/
    scanf("%f %f %f", &a, &b, &c);
    
    /*Doing the calculations*/
    delta = pow(b,2) - 4*(a*c);

    /*Finding the roots*/
    if (delta > 0 && a > 0){
        r1 = (-b + sqrt(delta)) / (2*a);
        r2 = (-b - sqrt(delta)) / (2*a);
        printf("R1 = %.5f\n", r1); /*Showing root 1*/
        printf("R2 = %.5f\n", r2); /*Showing root 2*/
    } else if (delta == 0){ /*If delta == 0, we have just root 1*/
        r1 = (-b + sqrt(delta)) / (2*a);            
    } else { /*If delta < 0, we can't find roots*/
        printf("Impossivel calcular\n");
    }

    /*Ending*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/