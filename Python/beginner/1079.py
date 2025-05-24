# Requesting number of tests
n = int(input())
media = None

# Iterating
for i in range(1, n + 1, 1):
    # Requesting values for testing
    a, b, c = map(float,(input().split()))  
    media = (((a * 2) + (b * 3) + (c * 5))/10)

    # Showing results
    print(f"{media:.1f}")
    
# By Fernando Serra
# https://github.com/fernandosserra