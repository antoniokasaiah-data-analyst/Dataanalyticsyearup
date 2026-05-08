"""
You are going to tile a room whose dimensions are length by width feet. There are 
twelve tiles per box, each 1 foot by 1 foot. How many boxes of tiles do you need? 

You can only buy full boxes, not a partial box.

You also want to buy at least 10% more tiles than you need in order to handle chips, 
breakage, and mess-ups. How many total boxes will you buy?"""

L1 = 50
W1 = 80
l= 1
w = 1
roomarea= L1 * W1
tilearea = l *w
areaperbox = tilearea *12
boxesneeded = roomarea/areaperbox
extratiles = boxesneeded *(10/100)
L1 = 50
W1 = 80

roomarea= L1 * W1

print(f'I need about {boxesneeded:.2f} boxes to tile the entire room.')
print(f'I ordered an extra 10% of the tiles I needed which is about {extratiles:.2f} more tiles.')
