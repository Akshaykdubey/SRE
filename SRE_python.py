hex_value = input('Enter hex value: ').lstrip('#')
print('RGB =', tuple(int(hex_value[i:i+2], 16) for i in (0, 2, 4)))
