"""How do you calculate the distance between coordinates (x1, y1) and (x2, y2)?
 Hint: 
You'll need to look up how to calculate a square root in Python, which may involve a 
function from the math module.

Code the script for calculating this distance in a file named distance.py"""

from math import sqrt

x1 = 2
x2 = 4 
y1 = 3
y2 = 8 

distance = sqrt((x2 - x1)**2 + (y2 - y1)**2)

print(distance)