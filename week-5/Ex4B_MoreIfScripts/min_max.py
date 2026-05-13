"""Create a script named min_max.py that displays both the smallest and then the 
largest of three numbers.

Name your variables a, b, and c and assign them values. Then use if/else statements 
to determine and display the answer.

Be sure to test your script using an assortment of different values in your variables, so 
that you look at a variety of different number combinations."""

a = float(input("Enter a random number from 1-10: "))
b = float(input("Enter a random number from 1-10: "))
c = float(input("Enter a random number from 1-10: "))

# remeber elif only resolves if the first if statement is false
# else only resolves if all if and elif statements are false
if a >= 0 and a < 11:
    print(f"Your number is {a:.2f}")
else :
    print("Error enter a number from 1-10")
if b >= 0 and b < 11:
    print(f"Your number is {b:.2f}")
else :
    print("Error enter a number from 1-10")
if c >= 0 and c < 11:
    print(f"Your number is {c:.2f}")
else :
    print("Error enter a number from 1-10")