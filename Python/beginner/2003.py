# https://judge.beecrowd.com/pt/problems/view/2003
# Domingo de Manhã

while True:
    try:
        hour, minute = map(int, input().split(':'))
        if hour < 7 or (hour == 7 and minute == 0):
            print("Atraso maximo: 0")
        elif hour == 7 and minute == 0:
            print("Atraso maximo: 0")
        else:
            delay = (hour - 7) * 60 + minute
            print(f"Atraso maximo: {delay}")
    except EOFError:
        break
    except ValueError:
        break
    
# By: Fernando Serra
# https://github.com/fernandosserra 