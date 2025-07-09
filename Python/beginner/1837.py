# https://judge.beecrowd.com/pt/problems/view/1837
# Prefácio

dividend, divider = map(int, input().split())

remainder = dividend % divider

if remainder < 0:
    remainder += abs(divider)

quotient = (dividend - remainder) // divider
print(quotient, remainder)

# By: Fernando Serra
# https://github.com/fernandosserra