'''Create the script in a file named rule_of_72.py

c) The displayed output should be formatted as follows:
Your current savings is [number].

At a [number]% interest rate, your savings account will be 
worth [number] in [number] years

d) Show your doubled balance with 2 digits to the right of the decimal point by using 
format(__, ".2f") and show years with 1 digit to the right of the decimal. How 
can you do this using format()?

e) There are a couple ways you might get the interest rate to display as a percentage. 
One option is to use the format function. In this case, instead of including the 
character f to assign a fixed decimal format, use the character % to assign the
percentage format, e.g. format(__, ".0%")

f) When you get the script working, commit your changes.'''

csavings = float(input('current savings: '))
inrate = float(input('interest rate: ')) /100
yearsdoubled = float((72/inrate) )
inafter = int(yearsdoubled * csavings)

print(f'Your current savings is number {csavings:.2f}')

print(f'At a {format(inrate,".0%")} interest rate, your savings account will be worth {inafter:.2f} in {yearsdoubled:.1f} years')