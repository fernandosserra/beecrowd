# https://judge.beecrowd.com/pt/problems/view/1962
# Há Muito, Muito Tempo Atrás

CURRENTYEAR = 2015
years = int(input())

for i in range(years):
    evalYear = int(input())
    
    if evalYear <= CURRENTYEAR:
        if CURRENTYEAR - evalYear == 0:
            print("1 A.C.")
        else:
            print(f"{CURRENTYEAR - evalYear} D.C.")
    else:
        print(f"{evalYear - CURRENTYEAR + 1} A.C.")
        
# By: Fernando Serra
# https://github.com/fernandosserra