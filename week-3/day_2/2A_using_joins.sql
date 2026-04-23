USE northwind;

/* 1. Create a single query to list the product id, product name, unit price and category 
name of all products. Order by category name and within that, by product name. */

SELECT * 
FROM products;

SELECT * 
FROM categories;

SELECT t1.productname,t1.productid,t1.unitprice,categoryname
FROM products AS t1
JOIN categories AS t2
ON t1.categoryid = t2.categoryid;



/* 2. Create a single query to list the product id, product name, unit price and supplier 
name of all products that cost more than $75. Order by product name. */

SELECT * 
FROM products;

SELECT * 
FROM suppliers;

SELECT t1.productid,t1.productname,t1.unitprice,companyname AS Suppliername
FROM products AS t1
JOIN suppliers AS t2
ON t1.supplierid = t2.supplierid
WHERE unitprice > 75
ORDER BY productname;

/* 3. Create a single query to list the product id, product name, unit price, category name, 
and supplier name of every product. Order by product name. */

SELECT * 
FROM products;

SELECT * 
FROM suppliers;

SELECT * 
FROM categories;

SELECT t1.productid,t1.productname,t1.unitprice,t2.companyname AS suppliername,t3.CategoryName
FROM products AS t1
JOIN suppliers AS t2
ON t1.SupplierID = t2.SupplierID
JOIN categories AS t3
ON t1.CategoryID = t3.CategoryID
ORDER BY productname;

/*4. Create a single query to list the order id, ship name, ship address, and shipping 
company name of every order that shipped to Germany. Assign the shipping company 
name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it 
shipped to. */

USE northwind;

SELECT *
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'orders';

SELECT * 
FROM shippers;

SELECT * 
FROM orders;

SELECT t1.orderid,t1.shipname,t1.shipaddress,t2.companyname AS Shipper
FROM orders AS t1
JOIN shippers AS t2
ON t1.shipvia = t2.shipperid
WHERE t1.shipcountry = 'germany'
ORDER BY shipper, shipaddress;


/* 5. Start from the same query as above (#4), but omit OrderID and add logic to group by 
ship name, with a count of how many orders were shipped for that ship name. */

SELECT count(t1.shipname),t1.shipname
FROM orders AS t1
JOIN shippers AS t2
ON t1.shipvia = t2.shipperid
WHERE t1.shipcountry = 'germany'
GROUP BY t1.shipname
ORDER BY t1.shipname;




/* 6. Create a single query to list the order id, order date, ship name, ship address of all 
orders that included Sasquatch Ale.
∗ Hint: You will need to join on three tables to accomplish this. (One of these tables 
has a sneaky space in the name, so you will need to surround it with backticks, like 
this: `table name`) */

SELECT t1.orderid,t1.shipname,t1.shipaddress,t1.orderdate,t1.shipaddress
FROM orders AS t1
JOIN shippers AS t2
ON t1.shipvia = t2.shipperid
WHERE t1.shipaddress LIKE '%ALE%'
ORDER BY shipaddress;

-- 6. List order id, order date, ship name, ship address of all orders that
-- --    included Sasquatch Ale.
-- Note: 'order details' has a space in the name so it requires backticks.

SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM orders o
INNER JOIN `order details` od ON o.OrderID = od.OrderID
INNER JOIN products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale'
ORDER BY o.OrderID ASC;





-- 7. Save your changes to 2A_using_joins.sql and use Git Bash to add, commit, and push 
-- to DataAnalytics/week-03. */


