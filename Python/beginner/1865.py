# https://judge.beecrowd.com/pt/problems/view/1865
# Mjölnir

# Main
trials = int(input())

for i in range(trials):
    heroName, heroStrenght = input().split()
    
    if heroName == "Thor":
        print("Y")
    else:
        print("N")
        
# By: Fernando Serra
# https://github.com/fernandosserra