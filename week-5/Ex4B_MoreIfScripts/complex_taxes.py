"""Start by copying your code for calculation of gross pay from the earlier lab 
(pay_rules.py) and include it here as part of your starting point. Remember, that code 
calculates weekly gross pay. Extend that calculation to estimate annual gross pay 
(how many weeks in a year?) and save it to a new variable."""


"""if hours_worked > 40:
    print(((pay_rate * 1.5) * overtime_hours) + gross_pay_no_overtime)
elif hours_worked < 40:
    print(gross_pay_no_overtime)"""

# conditional expression includes an if and a else statement no elif 
# conditional expression is a variable assigned to a values based on conditions  

pay_rate =float(input("Enter you hourly pay rate: "))
hours_worked = float(input("Enter how many hours you've worked: "))
overtime_hours = hours_worked - 40
gross_pay_no_overtime = pay_rate * (hours_worked - overtime_hours)



gross_pay = (
    (((pay_rate *1.5) * overtime_hours) + gross_pay_no_overtime)
    if hours_worked > 40
    else gross_pay_no_overtime
)
print(gross_pay)

annual_gross_pay = ((gross_pay *4)*12)
print(annual_gross_pay)


filling_status = float(input("What is your filling status? Enter 1 for single and 2 for joint:  "))

# using a conventional expression and multiple nested if statements
# indentation affects where the code is read 
if filling_status == 1:
    if annual_gross_pay < 12000:
        tax_rate=(float(.05))
    elif annual_gross_pay >= 12000 and annual_gross_pay <= 24999.99:
        tax_rate=(float(.10))
    elif annual_gross_pay >= 25000 and annual_gross_pay < 75000:
        tax_rate=( float(.11))
    elif annual_gross_pay >= 75000:
        tax_rate=(float(.20))
elif filling_status == 2:
    if annual_gross_pay < 12000:
        tax_rate= (float(0))
    elif annual_gross_pay >= 12000 and annual_gross_pay <= 24999.99:
        tax_rate= (float(.06))
    elif annual_gross_pay >= 25000 and annual_gross_pay <= 74999.99:
        tax_rate= (float(.10))
    elif annual_gross_pay >= 75000:
        tax_rate= (float(.20))

print(f"Your tax rate is {tax_rate:.0%}")
weekly_hours_worked_final= hours_worked
weekly_pay_rate_final= pay_rate
gross_pay_weekly = gross_pay
filling_status_final =filling_status
tax_withholding = weekly_pay_rate_final * tax_rate
net_pay = gross_pay_weekly - tax_withholding


print(f"""You worked {weekly_hours_worked_final} hours this period. Because you earn {weekly_pay_rate_final} per hour, 
      your gross weekly pay is {gross_pay_weekly}
      Your filing status is {filling_status_final}
      Your tax withholding for the week is ${tax_withholding:.2f}
      Your net pay is ${net_pay:.2f}""")