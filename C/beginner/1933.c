// https://judge.beecrowd.com/pt/problems/view/1933
// Tri-du

// Libraries
#include <stdio.h>

// Main
int main(){
    int a, b, c;

    while(scanf("%d", &a) != EOF){
        
        scanf("%d", &b);

        if (a > b) c = a;
        else if (a < b) c = b;
        else c = a;

        printf("%d\n", c);
    }
    

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra