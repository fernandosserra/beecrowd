// https://judge.beecrowd.com/pt/problems/view/1960
// Numeração Romana para Números de Página

// Libraries
#include <stdio.h>

// Constants
int DECIMAL[] = { 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 };
char *ROMAN[] = { "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I" };

// Prototypes
void converter(int num);

// Main
int main (){

	int num;

	scanf("%d", &num);

	converter(num);
	printf("\n");

    return 0;

}

// Function to convert DECIMAL into ROMAN
void converter(int num)
{

	int i;

	i = 0;
	while (num)
	{
		while (num / DECIMAL[i])
		{

			printf("%s", ROMAN[i]);
			num -= DECIMAL[i];

		}

		++i;

	}
}

// By: Fernando Serra - Thanks to malbolgee.
// https://github.com/fernandosserra