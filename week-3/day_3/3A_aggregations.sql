USE northwind;

SELECT *
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'products';

/* 1. Write a query to find the price of the cheapest item that Northwind sells. Then write a 
second query to find the name of the product that has that price. */

SELECT ProductName
FROM products
ORDER BY UNITPRICE ASC
LIMIT 1;

SELECT unitprice
FROM products
ORDER BY UNITPRICE ASC
LIMIT 1;


/* 2. Write a query to find the average price of all items that Northwind sells.
(Bonus: Once you have written a working query, try asking Claude or ChatGPT for help 
using the ROUND function to round the average price to the nearest cent.) */

SELECT ROUND(AVG(unitprice),1) AS total_average_unitprice
FROM products;

/* 3. Write a query to find the price of the most expensive item that Northwind sells. Then 
write a second query to find the name of the product with that price, plus the name of 
the supplier for that product. */

SELECT UNITPRICE
FROM products 
ORDER BY UnitPrice DESC
LIMIT 1;

SELECT *
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'products';

SELECT t1.productname,ROUND(t1.unitprice,1),t2.CompanyName FROM products AS t1
JOIN suppliers AS t2
ON t1.supplierid =t2.supplierid
ORDER BY T1.unitprice DESC
LIMIT 1;

/* 4. Write a query to find total monthly payroll (the sum of all the employees’ monthly 
salaries). */

USE northwind;
SELECT * FROM EMPLOYEES;

SELECT ROUND(SUM(SALARY),1) AS total_monthly_payroll
FROM employees;


/*5. Write a query to identify the highest salary and the lowest salary amounts which any 
employee makes. (Just the amounts, not the specific employees!) */


USE northwind;
SELECT MIN(SALARY),MAX(SALARY) FROM EMPLOYEES
ORDER BY salary DESC
LIMIT 1 ;

/* 6. Write a query to find the name and supplier ID of each supplier and the number of 
items they supply. Hint: Join is your friend here. 
*/

SELECT COUNT(companyname) AS number_of_items,t1.companyname,t1.supplierid FROM SUPPLIERS AS T1
JOIN PRODUCTS AS T2
ON T1.SUPPLIERID = T2.SUPPLIERID
group by t1.companyname,t1.supplierid;


/* 7. Write a query to find the list of all category names and the average price for items in 
each category. */

SELECT * FROM categories;

SELECT *
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'products';

SELECT t1.categoryname, ROUND(AVG(t2.unitprice),2) AS Avg_unit_price 
FROM categories AS t1
JOIN products AS t2
ON t1.categoryid = t2.categoryid
GROUP BY t1.CategoryName;



/* 8. Write a query to find, for all suppliers that provide at least 5 items to Northwind, what 
is the name of each supplier and the number of items they supply.
Year Up United Data Analyst Training Academy Week 3 Lab Workbook
Page 13 of 16 */ 

SELECT count(t1.SupplierID) AS total_items,t1.companyname FROM suppliers AS t1
JOIN products AS t2
ON t1.supplierid = t2.supplierid
GROUP BY t1.companyname
HAVING total_items >= 5;

SELECT *
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'products';


/* 9. Write a query to list products currently in inventory by the product id, product name, 
and inventory value (calculated by multiplying unit price by the number of units on 
hand). Sort the results in descending order by value. If two or more have the same 
value, order by product name. If a product is not in stock, leave it off the list.
*/

SELECT  productid,productname,(unitprice * UnitsInStock) AS inventory_value 
FROM products
ORDER BY inventory_value DESC
/* 10. Save your changes to 3A_aggregations.sql and use Git Bash to add, commit, and push 
to DataAnalytics/week-03. */


