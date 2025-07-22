// https://judge.beecrowd.com/pt/problems/view/1957
// Converter para HexaDecimal

// Libraries
#include <stdio.h>

// Main
int main (){
    int usrInput;
    char usrBuff[20];

    scanf("%d", &usrInput);

    sprintf(usrBuff, "%X", usrInput);

    printf("%s\n", usrBuff);

    return 0;
}

// By: Fernando Serra
// https://github.com/fernandosserra