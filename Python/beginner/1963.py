# https://judge.beecrowd.com/pt/problems/view/1963
# O Filme

oldPrice, newPrice = map(float, input().split())

if oldPrice == 0 or newPrice == 0:
    print("0.00%")
else:
    increaseAmount = (newPrice - oldPrice) / oldPrice
    print(f"{increaseAmount * 100:.2f}%")
    
# By: Fernando Serra
# https://github.com/fernandosserra