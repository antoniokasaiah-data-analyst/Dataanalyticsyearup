USE northwind;

-- 1 
SELECT CategoryID,categoryname, `description` 
FROM categories;

-- 2
SELECT productid,productname,quantityperunit
FROM products
WHERE QuantityPerUnit LIKE '%box%' ; 

-- 3
SELECT PRODUCTID,PRODUCTNAME,discontinued
FROM products;

-- 4

SELECT employeeid,concat(firstname, ' ',Lastname) AS Fullname,Title
FROM employees;