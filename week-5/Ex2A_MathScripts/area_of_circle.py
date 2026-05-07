'''The displayed output should be formatted as follows:

The area of a circle with radius [number] is [number]

Year Up United Data Analyst Training Academy Week 5 Lab Workbook
Page 21 of 43

d) Once your script is working, save and commit your changes.'''

from math import pi

r = int(input('radius:  '))
area = pi * r ** 2

print(f'The area of a circle with a radius of {r} is {area}')
