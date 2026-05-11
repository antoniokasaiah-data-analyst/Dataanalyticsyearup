""" In a file named pay_rules.py, create a script to calculate gross pay given the variables
pay_rate and hours_worked. If the person works more than 40 hours, pay the 
overtime hours at 1.5 times the rate of regular hours.
"""

pay_rate =float(input("Enter you hourly pay rate: "))
hours_worked = float(input("Enter how many hours you've worked: "))
overtime_hours = hours_worked - 40
gross_pay_no_overtime = pay_rate * (hours_worked - overtime_hours)



if hours_worked > 40:
    print(((pay_rate * 1.5) * overtime_hours) + gross_pay_no_overtime)
elif hours_worked < 40:
    print(gross_pay_no_overtime)
# elif resolves if the if statement is false 
# else applies to all things not resolved by the if or elif statement.




    #print(f"Your gross pay for the week is {gross_pay_with_overtime}")
#else: print(gross_pay)
