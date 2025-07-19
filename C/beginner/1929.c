// https://judge.beecrowd.com/pt/problems/view/1929
// Triângulo

// Libraries
#include <stdio.h>

// Function Prototypes
int isTriangle(int x, int y, int z);


// Main
int main (){
    int a, b, c, d;

    scanf("%d %d %d %d", &a, &b, &c, &d);

    if (isTriangle(a, b, c) || 
        isTriangle(a, b, d) || 
        isTriangle(a, c, d) || 
        isTriangle(b, c, d)){
            printf("S\n");
        } else {
            printf("N\n");
        }

    return 0;
}

// Function Bodies
int isTriangle(int x, int y, int z){
    return (x + y > z && x + z > y && y + z > x);
}


// By: Fernando Serra
// https://github.com/fernandosserra