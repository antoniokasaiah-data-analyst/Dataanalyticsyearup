show databases;

USE northwind;
SHOW TABLES;
SELECT TABLE_NAME 
FROM information_schema.tables
WHERE table_schema = 'northwind'
AND table_type = 'BASE TABLE';

-- EXAMPLE 1
SELECT productname, unitprice 
FROM products;

-- EXAMPLE 2

SELECT * FROM products;

-- EXAMPLE 



-- EXAMPLE 4
SELECT companyname,city,country 
FROM customers
WHERE country = 'germany'; -- single quotations

SELECT productname, unitprice 
FROM products
WHERE unitprice > 50;

-- EXAMPLE 6
SELECT  orderid, customerid, shipcountry
FROM orders
WHERE shipcountry = 'france';
-- EXAMPLE 7
SELECT productname,unitprice, reorderlevel
FROM products
WHERE unitprice < reorderlevel;

-- EXAMPLE 8
SELECT orderid, freight 
FROM orders 
WHERE freight >= 100;

-- EXAMPLE 

SELECT unitprice, unitsinstock,productname
FROM products
WHERE unitprice > 20 AND unitsinstock > 50;

-- EXAMPLE 11
SELECT companyname,country
FROM customers
WHERE COUNTRY = 'UK' OR 'IRELAND';

-- EXAMPLE 12
SELECT unitprice,CategoryID
FROM products
WHERE categoryid >= 2
AND unitprice > 20;

-- EXAMPLE 13
SELECT companyname,country
FROM customers
WHERE NOT COUNTRY = 'U.S.A.';

-- EXAMPLE 14
SELECT productname,discontinued
FROM products
WHERE Discontinued != '1'; -- bollean 1 means yes 0 means no

-- EXAMPLE 15

SELECT companyname,country
FROM customers
WHERE country IN( 'france','germany','spain');

-- EXAMPLE 16
SELECT  productname,supplierid
FROM products
WHERE supplierid >= 4;

-- EXAMPLE 17
SELECT productname,unitprice
FROM products
WHERE unitprice BETWEEN 10 AND 20;

-- EXAMPLE 18
SELECT productname,unitprice
FROM products
WHERE;

-- EXAMPLE
SELECT customerid,employeeid,shipregion
FROM orders
WHERE shipregion IS Null; -- null doesnt use equal

-- EXAMPLE 20
SELECT LASTNAME,firstname
FROM employees
WHERE region IS NOT NULL;

-- example 21 -- like function
SELECT companyname 
FROM customers
WHERE CompanyName LIKE 'A%'; -- PERCENTAGE SEARCHES MANY UNDERSCORE SEARCHERS ONE.

-- EXMAPLE 25 -- date filter
SELECT orderid,customerid,orderdate 
FROM orders
WHERE shippeddate = '1997-01-01';

-- EXAMPLE 26 -- year and month function
SELECT orderid, orderdate
FROM orders
WHERE YEAR(orderdate) =1997
AND MONTH(orderdate) = 6; -- date column goes in the parenthesis 

-- EXAMPLE 27 --asc/dsc order
SELECT productname,unitprice
FROM products
ORDER BY productname DESC, unitprice ;

-- EXAMPLE 28
SELECT customerid,city,country
FROM customers
ORDER BY country asc;

-- EXAMPLE 29 -- LIMIT AND OFFSET
SELECT productname,unitprice
FROM products
ORDER BY unitprice DESC
LIMIT 5;

-- EXAMPLE 30
SELECT productname,unitprice
FROM products
ORDER BY UNITPRICE 
LIMIT 5,5;

-- EXAMPLE 36 -- Artithmatic 
SELECT productname, unitprice AS 'Original Price', unitprice -(unitprice *.10)   AS '10% Discount Price'
FROM products
ORDER BY productNAME ASC;
