# https://judge.beecrowd.com/pt/problems/view/1958
# Notação Científica

# Main
usrInput = float(input())


formatted_str = f"{usrInput:+.4E}"

e_pos = formatted_str.find('E')
mantissa = formatted_str[:e_pos]
exponent_part = formatted_str[e_pos+1:]
    
if len(exponent_part) == 2 and (exponent_part[0] == '+' or exponent_part[0] == '-'):       
    formatted_exponent = exponent_part[0] + '0' + exponent_part[1]
elif len(exponent_part) == 1 and exponent_part[0].isdigit():
    formatted_exponent = "+0" + exponent_part[0]
else:
    formatted_exponent = exponent_part
    
print(f"{mantissa}E{formatted_exponent}")

# By: Fernando Serra
# https://github.com/fernandosserra