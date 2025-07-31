# https://judge.beecrowd.com/pt/problems/view/1983
# O Escolhido

students = int(input())
chosenStudent, chosenGrade = 0, 0.0


for n in range(students):
    reg, grade = input().split()
    grade = float(grade)
    
    if grade > chosenGrade:
        chosenStudent = reg
        chosenGrade = grade
            
if chosenGrade >= 8.0:
    print(chosenStudent)
else:
    print("Minimum note not reached")
    
# By: Fernando Serra
# https://github.com/fernandosserra