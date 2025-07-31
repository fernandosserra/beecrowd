// https://judge.beecrowd.com/pt/problems/view/1983
// O escolhido

// Libraries
#include <stdio.h>

// Main
int main(){
    int students, registration, studentChosen;
    float grade, gradeChosen;

    scanf("%d", &students);

    gradeChosen = 0;

    for (int i = 1; i <= students; i++){
        scanf("%d %f", &registration, &grade);

        if (grade > gradeChosen) {
            studentChosen = registration;
            gradeChosen = grade;
        }
    }

    if (gradeChosen >= 8){
        printf("%d\n", studentChosen);
    } else {
        printf("Minimum note not reached\n");
    }

    return 0;
}


// By: Fernando Serra
// https://github.com/fernandosserra