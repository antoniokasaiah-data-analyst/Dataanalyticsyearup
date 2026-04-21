USE northwind;

/* 1. Write a query to list the product id, product name, and unit price of every product that 
Northwind sells. (Hint: To help set up your query, look at the schema preview to see 
 what column names belong to each table. Or use SELECT * to query all columns
 first, then refine your query to just the columns you want.) */
 
 SELECT productid, productname,unitprice 
 FROM products;
 
 
 
 --  2. Write a query to identify the products where the unit price is $7.50 or less.
 
 SELECT unitprice,productname
 FROM products
 WHERE unitprice <= 7.50;
 
 
 
 
/* 3. What are the products that we carry where we have no units on hand, but 1 or more 
 units are on backorder? Write a query that answers this question. */
 
 SELECT productname,unitsinstock,unitsonorder
 FROM products
 WHERE unitsinstock = 0 AND unitsonorder >=1;
 -- Gorgonzola Telino

 
 
 
 /* 4. Examine the products table. How does it identify the type (category) of each item 
sold? Where can you find a list of all categories? Write a set of queries to answer these 
 questions, ending with a query that creates a list of all the seafood items we carry */
 
 SELECT * FROM products;
 -- The products table identify's the type category) of each item using CategoryID.
 
 SELECT * FROM categories;
 -- You can find a list of categories in the categories table
 
 SELECT * FROM products
 WHERE categoryid = 8;
 
 SELECT productname,categoryid
 FROM products 
 WHERE categoryid = 8;
 
 /* 5. Examine the products table again. How do you know what supplier each product
comes from? Where can you find info on suppliers? Write a set of queries to find the 
specific identifier for "Tokyo Traders" and then find all products from that supplier. */

SELECT * 
FROM products;
-- Using the supplierid we can identify which supplier is associated with a specific product.

SELECT *
FROM  suppliers;
-- retrieves up a list of suppliers and ids

SELECT * 
FROM products 
WHERE supplierid = 4;


/*6. How many employees work at northwind? What employees have "manager" 
somewhere in their job title? Write queries to answer each question.*/

SELECT * 
FROM employees;

SELECT count(employeeid)
FROM employees;
-- 9 employees work at northwind

SELECT * 
FROM employees;

SELECT * 
FROM employees 
WHERE title LIKE '%Man%' -- Used the like operator and wild cards to find patterns that contain 'man'
-- %man ends with man
-- man% starts with man
-- %man% conatins man



/* 7. Save your changes to 1B_query_practice.sql and use Git Bash to add, commit, and 
push to DataAnalytics/week-03. */

