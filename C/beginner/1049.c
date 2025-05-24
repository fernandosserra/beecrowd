// https://www.beecrowd.com.br/judge/pt/problems/view/1049
// Libraries
#include <stdio.h>
#include <string.h>

int main() {
    char master_type[20];
    char sub_type[20];
    char diet_type[20];

    // Asking for values to user
    scanf("%s", master_type);
    scanf("%s", sub_type);
    scanf("%s", diet_type);

    // Finding and showing
    if (strcmp(master_type, "vertebrado") == 0) {
        if (strcmp(sub_type, "ave") == 0) {
            if (strcmp(diet_type, "carnivoro") == 0) {
                printf("aguia\n");
            } else {
                printf("pomba\n");
            }
        } else {
            if (strcmp(diet_type, "onivoro") == 0) {
                printf("homem\n");
            } else {
                printf("vaca\n");
            }
        }
    } else {
        if (strcmp(sub_type, "inseto") == 0) {
            if (strcmp(diet_type, "hematofago") == 0) {
                printf("pulga\n");
            } else {
                printf("lagarta\n");
            }
        } else {
            if (strcmp(diet_type, "hematofago") == 0) {
                printf("sanguessuga\n");
            } else {
                printf("minhoca\n");
            }
        }
    }

    // Ending
    return 0;
}

/*By Fernando Serra
https://github.com/fernandosserra*/