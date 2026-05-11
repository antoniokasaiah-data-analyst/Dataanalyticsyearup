""" Write a script named dept_converter.py that uses if/elif/else logic to determine
and print department name based on a department code. Make sure to test your 
script with multiple codes."""

""" 
1 Marketing
5 Human Resources
10 Accounting
12 Legal
18 IT
20 Customer Relations """

department_code = float(input("Enter Department Code: "))

if department_code == 1:
    print("marketing")
elif department_code == 5:
    print("Human Resources")
elif department_code == 10:
    print("Legal")
elif department_code == 18:
    print("IT")
elif department_code == 20:
    print("Customer Relations")
elif department_code == 12:
    print("Legal")
else :
    print("Error wrong code")