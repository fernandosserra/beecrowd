# https://judge.beecrowd.com/pt/problems/view/1914
# De Quem é a Vez?

testCases = int(input())

for _ in range(testCases):
    playerOneName, playerOneStrategy, playerTwoName, _ = input().split()
    playerOneNumber, playerTwoNumber = map(int, input().split())
    
    sum_of_numbers = playerOneNumber + playerTwoNumber
    
    if (playerOneStrategy == "PAR" and sum_of_numbers % 2 == 0) or \
       (playerOneStrategy == "IMPAR" and sum_of_numbers % 2 != 0):
        print(playerOneName)
    else: 
        print(playerTwoName)
    
# By: Fernando Serra
# https://github.com/fernandosserra