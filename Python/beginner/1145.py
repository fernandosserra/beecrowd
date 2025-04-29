# https://judge.beecrowd.com/pt/problems/view/1145
# Sequência Lógica II

usr_input1, usr_input2 = map(int,input().split())
cnt = 0

for i in range(1, usr_input2 + 1):
    cnt +=1
    if cnt == usr_input1:
        print(i)
        cnt = 0
    else:
        print(i, end=' ')
    

# By Fernando Serra
# https://github.com/fernandosserra