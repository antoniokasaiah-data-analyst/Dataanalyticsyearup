"""
Federal taxes are 23% of your salary every month. 

You make X amount of money. How much is withheld for taxes?

Code the script in a file named taxes.py"""

s1 = int(input('salary: '))
tax =  float(23.46/100) *float(s1 )

print(f'You make {s1} amount of money. How much is withheld for taxes ?')
print(f' ${round(float(format(tax,'.2f')),1)} is what withheld in taxes') 