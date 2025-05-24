/*Including libraries*/
#include <stdio.h>
#include <stdlib.h>

/*Main Function*/
int main(){
    
    /*Variable declaration and initialization*/
    int a, b, c;
    int greaterAB, greaterAC;

    /*Requesting inputs to user*/
    scanf("%d" "%d" "%d", &a, &b, &c);

    /*Doing the calculations*/
    greaterAB = (a + b + abs(a - b)) / 2;
    greaterAC = (greaterAB + c + abs(greaterAB - c)) / 2;


    /*Putting results into screen*/
    if(greaterAB > greaterAC){
        printf("%d eh o maior\n", greaterAB);
    }        
    else{
        printf("%d eh o maior\n", greaterAC);
    }


    /*Ending code*/
    return 0;
}

/*By Fernando Serra*/
/*https://github.com/fernandosserra*/