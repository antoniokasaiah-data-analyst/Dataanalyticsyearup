/* Answer the following questions by studying the northwind schema. At the top of your 
script, include comments with your answers (written as a complete sentence):
a) What is the name of the table that holds the items Northwind sells?
Inventory

b) What is the name of the table that holds the types/categories of the items 
Northwind sells? 
category

*/

/* 5. Create a SELECT statement to retrieve all columns from the employees table.
a) Who is the Northwind employee whose name makes it look like she’s a bird?
Include the answer as a comment underneath the SELECT statement. */

SELECT * FROM employees;


DROP DATABASE IF EXISTS northwind;
CREATE DATABASE northwind;
USE northwind;

---

-- CUSTOMERS (ALL COLUMNS)

---

CREATE TABLE Customers (
CustomerID VARCHAR(5) PRIMARY KEY,
CompanyName VARCHAR(40),
ContactName VARCHAR(30),
ContactTitle VARCHAR(30),
Address VARCHAR(60),
City VARCHAR(15),
Region VARCHAR(15),
PostalCode VARCHAR(10),
Country VARCHAR(15),
Phone VARCHAR(24),
Fax VARCHAR(24)
);

INSERT INTO Customers VALUES
('VINET','Vins et alcools Chevalier','Paul Henriot','Owner','59 rue de l Abbaye','Reims',NULL,'51100','France','26.47.15.10',NULL),
('TOMSP','Toms Spezialitten','Karin Josephs','Owner','Luisenstr. 48','Munster',NULL,'44087','Germany','0251-031259',NULL),
('HANAR','Hanari Carnes','Mario Pontes','Manager','Rua do Paco, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091',NULL);

---

-- EMPLOYEES (ALL COLUMNS)

---

CREATE TABLE Employees (
EmployeeID INT PRIMARY KEY,
LastName VARCHAR(20),
FirstName VARCHAR(20),
Title VARCHAR(30),
TitleOfCourtesy VARCHAR(25),
BirthDate DATE,
HireDate DATE,
Address VARCHAR(60),
City VARCHAR(15),
Region VARCHAR(15),
PostalCode VARCHAR(10),
Country VARCHAR(15),
HomePhone VARCHAR(24),
Extension VARCHAR(4),
Photo LONGBLOB,
Notes TEXT NOT NULL,
ReportsTo INT,
PhotoPath VARCHAR(255),
Salary FLOAT
);

INSERT INTO Employees VALUES
(1,'Davolio','Nancy','Sales Representative','Ms.','1948-12-08','1992-05-01',
'507 - 20th Ave. E.Apt. 2A','Seattle','WA','98122','USA','206-555-9857','5467',
NULL,'Experienced sales rep',2,NULL,2954.55),

(2,'Fuller','Andrew','Vice President','Dr.','1952-02-19','1992-08-14',
'908 W. Capital Way','Tacoma','WA','98401','USA','206-555-9482','3457',
NULL,'Senior executive',NULL,NULL,4000);

---

-- SUPPLIERS

---

CREATE TABLE Suppliers (
SupplierID INT PRIMARY KEY,
CompanyName VARCHAR(40),
Country VARCHAR(15)
);

INSERT INTO Suppliers VALUES
(1,'Exotic Liquids','UK');

---

-- CATEGORIES (IMAGE REMOVED)

---

CREATE TABLE Categories (
CategoryID INT PRIMARY KEY,
CategoryName VARCHAR(15),
Description TEXT,
Picture LONGBLOB
);

INSERT INTO Categories VALUES
(1,'Beverages','Soft drinks, coffees, teas',NULL),
(2,'Condiments','Sweet and savory sauces',NULL);

---

-- PRODUCTS

---

CREATE TABLE Products (
ProductID INT PRIMARY KEY,
ProductName VARCHAR(40),
SupplierID INT,
CategoryID INT,
UnitPrice DECIMAL(10,2)
);

INSERT INTO Products VALUES
(1,'Chai',1,1,18.00),
(2,'Chang',1,1,19.00);

---

-- SHIPPERS

---

CREATE TABLE Shippers (
ShipperID INT PRIMARY KEY,
CompanyName VARCHAR(40)
);

INSERT INTO Shippers VALUES
(1,'Speedy Express');

---

-- TERRITORIES

---

CREATE TABLE Territories (
TerritoryID VARCHAR(20) PRIMARY KEY,
TerritoryDescription VARCHAR(50)
);

INSERT INTO Territories VALUES
('06897','Westboro');

---

-- ORDERS

---

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
CustomerID VARCHAR(5),
EmployeeID INT,
OrderDate DATE,
ShipVia INT
);

INSERT INTO Orders VALUES
(10248,'VINET',1,'1996-07-04',1),
(10249,'TOMSP',2,'1996-07-05',1);

---

-- ORDER DETAILS

---

CREATE TABLE Order_Details (
OrderID INT,
ProductID INT,
Quantity INT,
UnitPrice DECIMAL(10,2),
PRIMARY KEY (OrderID, ProductID)
);

INSERT INTO Order_Details VALUES
(10248,1,10,18.00),
(10249,2,5,19.00);

---

-- EMPLOYEE TERRITORIES

---

CREATE TABLE EmployeeTerritories (
EmployeeID INT,
TerritoryID VARCHAR(20),
PRIMARY KEY (EmployeeID, TerritoryID)
);

INSERT INTO EmployeeTerritories VALUES
(1,'06897'),
(2,'06897');

---

-- FOREIGN KEYS

---

ALTER TABLE Products
ADD FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID);

ALTER TABLE Products
ADD FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);

ALTER TABLE Orders
ADD FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Orders
ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE Orders
ADD FOREIGN KEY (ShipVia) REFERENCES Shippers(ShipperID);

ALTER TABLE Order_Details
ADD FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);

ALTER TABLE Order_Details
ADD FOREIGN KEY (ProductID) REFERENCES Products(ProductID);

ALTER TABLE EmployeeTerritories
ADD FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID);

ALTER TABLE EmployeeTerritories
ADD FOREIGN KEY (TerritoryID) REFERENCES Territories(TerritoryID);
