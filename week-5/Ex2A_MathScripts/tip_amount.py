''' a) Figure out the formula and what the script would look like, making up example 
values as needed. (If you need inspiration, what was your approximate restaurant 
bill the last time you ate at a restaurant?)

b) Create the script in a file named tip_amount.py

c) The displayed output should be formatted as follows:
The tip on a $[number] restaurant bill is $[number]

d) Once your script is working, save and commit your changes. '''

rbill = int(input('bill total: '))

tip= rbill * (int(input('tip percentage: '))/100)

print(f'The tip on a ${rbill} restaurant bill is $ {tip}')
