# Description: This script tests various numeric 
# conversion techniques
# Author: Sam Q. Newprogrammer

a = "101.1"
b = '55'
c = "402 Stevens"
d = 'Number 5'
""" 
For each variable above, perform the following transformations, creating a new 
variable for each.

a) Run the script to test each new variable as you go.

b) If a line of code produces an error, comment out that line but keep it in your script. 
Then note the error type as an inline comment. """

print(a)
print(b)
print(c)
print(d)

print(type(a))
print(type(b))
print(type(c))
print(type(d))

# print(int(a)) # cant turn string into int because it has a decimal need to convert into a float first
# print(int(float(a)))
# print(float(b))
# print(float(c)) cant print because text cannot be converted to numbers
# print(int(c))
# print(int(d)) cant print because text cannot be converted to numbers

e = '129013'
print(int(float(a[:3])))
print(int(a[:1]))
print(int(c[:2]))
print(int(d[-1:]))
print(int(e[-3:-1])) # code reads from left to right when slicing 

print(e.strip('12')) # removes strings left and reight of center 
print(e.rstrip('13')) # removes strings from right of center
print(e.lstrip('1290')) # removes characters from left side 