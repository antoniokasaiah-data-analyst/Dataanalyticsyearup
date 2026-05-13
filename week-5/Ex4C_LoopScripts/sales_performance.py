""" You have been given the following list of sales records. Each record is a tuple 
containing a salesperson's name, their region, and their total sales for the month:
sales_data = [
 ('Marcus Webb', 'East', 4250.00),
 ('Priya Sharma', 'West', 5875.50),
 ('DeShawn Carter', 'East', 3100.75),
 ('LaTonya Rivers', 'South', 6420.00),
 ('Bob Nguyen', 'West', 4980.25),
]
3. Use a for loop to unpack each tuple directly in the loop statement, and print a 
summary line for each record that looks like this:
Marcus Webb (East): $4,250.00
Priya Sharma (West): $5,875.50
...
4. Add a conditional inside your loop: if a salesperson's total is greater than $5,000, also 
print " ^ Top performer!" below their summary line."""

sales_data = [
 ('Marcus Webb', 'East', 4250.00),
 ('Priya Sharma', 'West', 5875.50),
 ('DeShawn Carter', 'East', 3100.75),
 ('LaTonya Rivers', 'South', 6420.00),
 ('Bob Nguyen', 'West', 4980.25),
]


total_sales = 0

for data in sales_data:

    total_sales += float(data[2])

    if float(data[2]) > 5000:
        print(f"{data[0]} ({data[1]}): {data[2]:.2f} ^ Top Performer ")
    else:
        print(f"{data[0]} ({data[1]}): {data[2]:.2f} ")

print(total_sales)

