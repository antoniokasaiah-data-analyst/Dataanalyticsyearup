/* 1. What is the product name(s) of the most expensive products? 
∗ HINT: Find the max price in a subquery and then use that value to find products 
whose price equals that value. (Some of your answers from Exercise 3.A may offer a 
useful starting point.) */

SELECT productname FROM products
WHERE unitprice = (SELECT max(unitprice) FROM products);


/*2. What is the product name(s) and categories of the least expensive products? 
∗ HINT: Find the min price in a subquery and then use that in your more complex 
query that joins products with categories.*/


SELECT * FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'products';

SELECT t1.productname,t2.categoryname FROM products AS t1
JOIN categories AS t2
ON t1.categoryid = t2.categoryid
WHERE unitprice =(SELECT min(unitprice) FROM products);

/*3. What is the order id, shipping name and shipping address of all orders shipped via 
"Federal Shipping"? 
∗ HINT: Find the shipper id of "Federal Shipping" in a subquery and then use that 
value to find the orders that used that shipper. 
∗ You do not need "Federal Shipping" to display in the results. */


SELECT * FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'ORDERS';

SELECT t1.orderid,t1.ShipName,t1.ShipAddress FROM orders AS t1
JOIN shippers AS t2
ON t1.shipvia =t2.shipperid
WHERE t2.shipperid = (SELECT shipperid FROM shippers WHERE shipperid = 3);

/*4. What are the order ids of the orders that included "Sasquatch Ale"? 
∗ HINT: Find the product id of "Sasquatch Ale" in a subquery and then use that value 
to find the matching orders from the `order details` table. 
∗ Your final results only need to display OrderID, but you may find it helpful to include 
additional columns as you work on creating the query to better understand how the 
query is working. */

SELECT * FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'orderdetails';

SELECT * FROM `order details` AS t1
JOIN products AS t2
ON t1.productid =t2.productid
WHERE t1.productid = (SELECT productid FROM products
WHERE productname LIKE 'sas%');


/*5. What is the name of the employee that sold order 10266?
Year Up United Data Analyst Training Academy Week 3 Lab Workbook
Page 16 of 16 */

SELECT * FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'employees';

SELECT t1.firstname,t1.lastname FROM employees AS t1
JOIN orders AS t2
ON t1.EmployeeID = t2.EmployeeID
WHERE t2.orderid = (SELECT orderid FROM orders
WHERE orderid = 10266);

DESCRIBE employees;
DESCRIBE orders;

SELECT * FROM orders
WHERE orderid = 10266;


/*6. What is the name of the customer that bought order 10266? */

DESCRIBE ORDERS;

SELECT CONTACTNAME FROM customers AS t1
JOIN orders AS t2
ON t1.customerid = t2.customerid
WHERE t2.orderid = (SELECT orderid FROM orders
WHERE orderid = 10266)


/*7. Save your changes to 4A_subqueries.sql and use Git Bash to add, commit, and push 
to DataAnalytics/week-03 */