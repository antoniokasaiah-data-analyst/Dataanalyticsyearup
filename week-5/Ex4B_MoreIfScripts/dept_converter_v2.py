"""Write a script named dept_converter.py that uses if/elif/else logic to determine
and print department name based on a department code. Make sure to test your 
script with multiple codes."""

""" 
1 Marketing
5 Human Resources
10 Accounting
12 Legal
18 IT
20 Customer Relations 

Write a script that uses match/case"""

department_code = float(input("Enter Department Code: "))

# similar to if and elif but for exact values like 19, 20, 21 not comparisons like > or < 
match department_code:
    case 1: 
        print("Marketing")
    
    case 5:
        print("Human Resources")
    
    case 10:
        print("Accounting")
    
    case 12:
        print("legal")
    
    case 18:
        print("IT")

    case 20:
        print("Customer Relations")

# match/case is less versatile but cleaner for exact values 
# while elif and if is more versatile but looks unorganized in long scripts