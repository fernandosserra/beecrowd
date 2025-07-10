# https://judge.beecrowd.com/pt/problems/view/1848
# Corvo Contador

# Main Code

def bValue (blinks): # The Same Function to convert blinks or open eyes into binaries
    if blinks == '-': return 0
    elif blinks == '*': return 1
    else: return 0
    
def converts (line):
    answer = 0
    # Reading our String from left to Right
    for i in range(len(line)):
        answer = answer * 2 + bValue(line[i])
    return answer

crowNumber = 0
while True:
    try:
        line = input()
        if line == 'caw caw':
            print(crowNumber)
            crowNumber = 0
        else:
            crowNumber += converts(line)
    except EOFError:
        break
    except ValueError:
        break
        
# By: Fernando Serra
# https://github.com/fernandosserra