# https://judge.beecrowd.com/pt/problems/view/1985
# MacPRONALTS

productsSingleQT = int(input())

orderTotalPrice = 0

for i in range(productsSingleQT):
    productId, productsQtOrder = map(int, input().split())
    
    match productId:
        case 1001:
            orderTotalPrice += productsQtOrder * 1.50
        case 1002:
            orderTotalPrice += productsQtOrder * 2.50
        case 1003:
            orderTotalPrice += productsQtOrder * 3.50
        case 1004:
            orderTotalPrice += productsQtOrder * 4.50
        case 1005:
            orderTotalPrice += productsQtOrder * 5.50
        case _:
            orderTotalPrice += 0


print(f"{orderTotalPrice:.2f}")

# By: Fernando Serra
# https://github.com/fernandosserra