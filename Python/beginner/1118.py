# https://judge.beecrowd.com/pt/problems/view/1118
# Várias Notas Com Validação

def get_grade():
    while True:
        try:
            grade = float(input())
            if 0 <= grade <= 10:
                return grade
            else:
                print("nota invalida")
        except ValueError:
            print("nota invalida")

def get_repeat():
    while True:
        print("novo calculo (1-sim 2-nao)")
        decision = input()
        if decision == "1":
            return True
        elif decision == "2":
            return False
            

def main():
    while True:
        # Solicitando notas
        grade1 = get_grade()
        grade2 = get_grade()
        # Calculando e apresentando a média
        media = (grade1 + grade2) / 2
        print(f"media = {media:.2f}")
        
        should_repeat = get_repeat()
        if not should_repeat:
            break

if __name__ == "__main__":
    main()
    
# By Fernando Serra
# https://github.com/fernandosserra