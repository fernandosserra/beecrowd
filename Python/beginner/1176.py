# https://judge.beecrowd.com/pt/problems/view/1176
# Fibonacci em Vetor

# Pre-calculating Fibonacci numbers up to F(60)
pyFibz = [0, 1]
for i in range(2, 61):
    pyFibz.append(pyFibz[i - 1] + pyFibz[i - 2])

# Asking for the number of test cases
testCases = int(input())

# Processing indexes and printing results
for _ in range(testCases):
    indexes = int(input())
    print(f"Fib({indexes}) = {pyFibz[indexes]}")
    
# By: Fernando Serra
# https://github.com/fernandosserra