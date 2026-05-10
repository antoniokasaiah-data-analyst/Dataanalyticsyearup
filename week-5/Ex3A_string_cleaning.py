name_1 = "PRIYA SHARMA"
name_2 = "bob NGUYEN"
name_3 = "LaTonya Williams"

# when editing a string the function comes after the variable
# example .lower, .upper,.strip,.lstrip,.rstrip,.replace
# you can also use more thn one at a time
print(name_1.lower())
print(name_2.lower())
print(name_3.lower())

# python reads from left to right so if you lower first then upper, upper will be th efinal result
# changes output to lower case and first letter to upper case
print(name_1.lower().title())
print(name_2.lower().title())
print(name_3.lower().title())

salary_1 = "$82,500"
salary_2 = "$74,000"

#replaces the $ with blank and converts it to string
# you can use the same fucntion mutilple times 
# I needed to remove the comma and the dollar sign to turn the string into an integer
print(int(salary_1.replace('$', '').replace(',', '')))
print(int(salary_2.replace('$', '').replace(',', '')))
