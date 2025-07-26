# https://judge.beecrowd.com/pt/problems/view/1961
# Pula Sapo

import sys

jump, pipes = map(int, sys.stdin.readline().split())
pipesSize = list(map(int, sys.stdin.readline().split()))

for i in range(1, pipes):
    diff = abs(pipesSize[i] - pipesSize[i-1])
    
    if diff > jump:
        print("GAME OVER")
        sys.exit()
        
print("YOU WIN")

# By: Fernando Serra
# https://github.com/fernandosserra