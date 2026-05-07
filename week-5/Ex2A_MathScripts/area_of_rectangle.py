''' 
How do you calculate the area of a rectangle? 

a) Say you have a rectangle that has dimensions corresponding to your birthday – the 
month number is one side and the day of the month is the other side. How would 
you calculate the area of this rectangle? 

b) Figure out the formula and what the script would look like, and create the script in a 
file named area_of_rectangle.py

c) The displayed output should be formatted as follows:
Side A is [number]
Side B is [number]
The area of the rectangle is [number]

d) Once your script is working, save and commit your changes.'''

sideA= int(input('Enter Number: '))
sideB= int(input('Enter Number: '))
area = (sideA * sideB)

print(f'The area of the rectangle is {area}')

