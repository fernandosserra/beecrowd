# https://judge.beecrowd.com/pt/problems/view/1789
# A Corrida de Lesmas


# Main Code

while True:
    try:
        slugTeamsStr = input()
        slugTeams = int(slugTeamsStr)
    
        teamSpeedsStr = input()
        teamSpeeds = list(map(int, teamSpeedsStr.split()))
        
        maxSpeed = max(teamSpeeds)
                          
        if maxSpeed >= 20:
            print(3)
        elif maxSpeed >= 10:
            print(2)
        else:
            print(1)
            
    except EOFError:
        break
    except ValueError:
        break
    
# By: Fernando Serra and the all-knowing Washu Hakubi, who ensures true perfection!
# https://github.com/fernandosserra