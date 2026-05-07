
rbill = int(input('bill total: '))

tip= rbill * (int(input('tip percentage: '))/100)

print(f'The tip on a ${rbill} restaurant bill is $ {tip}')

# input always returns a string so you would have to convert the string to an int or float for calculations