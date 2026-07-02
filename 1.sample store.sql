CREATE DATABASE SampleStore11;
CREATE TABLE SalesData (
    OrderId INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    OrderDate DATE,
    Country VARCHAR(50),
    Region VARCHAR(50),
    Category VARCHAR(50),
    Sales DECIMAL(12,3),
    Quantity INT,
    Profit DECIMAL(12,3),
    Discount DECIMAL(5,2),
    TotalSales DECIMAL(12,3),
    TotalProfit DECIMAL(12,3),
    TotalOrders INT
);
INSERT INTO SalesData
(OrderId, CustomerName, OrderDate, Country, Region, Category, Sales, Quantity, Profit, Discount, TotalSales, TotalProfit, TotalOrders)
VALUES
(101,'Shyam','2024-01-03','United States','North','Electronics',4499.985,79,450.7,0.12,87538.457,3504.6,29),
(102,'Shalni','2024-01-04','England','South','Comuters',7999.980,46,215.4,0.14,83038.472,3053.9,28),
(103,'Hary','2024-01-05','Finland','East','Laptops',2177.584,45,120.8,0.23,75038.492,2838.5,27),
(104,'Ram','2024-01-06','United Kingdom','West','Desktop Computers',2549.985,23,185.2,0.06,72860.908,2717.7,26),
(105,'Sam','2024-01-07','South Africa','Central','Monitors',1889.990,78,95.4,0.22,70310.923,2532.5,25),
(106,'Rohan','2024-01-08','North Africa','Notheast','Printers',1799.994,98,160.8,0.45,68420.933,2437.1,24),
(107,'Prem','2024-01-09','China','Northwest','Computer Accessories',1525.188,35,35.5,0.56,66620.939,2276.3,23),
(108,'Amit','2024-01-10','Nepal','Southeast','Keyboards',4297.644,13,22.7,0.32,65095.751,2240.8,22),
(109,'Sumit','2024-01-11','Bhutan','Southwest','Mice',1088.792,89,68.9,0.31,60798.107,2218.1,21),
(110,'Komal','2024-01-12','Iran','Upper North','Storage Devices',22638.480,67,54.3,0.30,59709.315,2149.2,20),
(111,'Himanshu','2024-01-13','Iraq','Lower North','Smartphones',3083.430,90,145.6,0.44,37070.835,2094.9,19),
(112,'Samy','2024-01-14','Ireland','Upper South','Mobile Accessories',896.990,12,98.2,0.43,33987.405,1949.3,18),
(113,'Sandhya','2024-01-15','Isarel','Lower South','Tablets',8159.952,43,42.1,0.87,33090.415,1851.1,17),
(114,'Rashmi','2024-01-16','Italy','Coastal North','Smartwatches',1633.188,4,12.8,0.78,24930.463,1809.0,16),
(115,'Kajal','2024-01-17','Japan','Coastal South','Cameras',1614.582,32,215.4,0.54,23297.275,1796.2,15),
(116,'Hritik','2024-01-18','Kuwait','Mountain Region','Camera Accessories',463.248,8,310.7,0.33,21682.693,1580.8,14),
(117,'Mohan','2024-01-19','Malaysia','Valley Region','Audio Equipment',762.594,54,88.5,0.28,21219.445,1270.1,13),
(118,'Soumya','2024-01-20','Maldives','River Region','Headphones',760.980,65,18.2,0.41,20456.851,1181.6,12),
(119,'Krishna','2024-01-21','Mexico','Lake Region','Speakers',1598.058,37,72.3,0.66,19695.871,1163.4,11),
(120,'Hemant','2024-01-22','Myanmar','Desert Region','Gaming Consoles',4663.736,9,255.9,0.88,18097.813,1091.1,10),
(121,'Simran','2024-01-23','Kathmandu','Highland','Vedio Games',1345.485,95,140.6,0.11,13434.077,835.2,9),
(122,'Himesh','2024-01-24','Pristina','Lowland','Networking Devices',2314.116,87,56.8,0.16,12088.592,694.6,8),
(123,'Krish','2024-01-25','Tokyo','Metro North','Software',1875.258,52,175.4,0.53,9774.476,637.8,7),
(124,'Kritika','2024-01-26','Rome','Metro South','Office Supplies',1188.000,28,198.2,0.91,7899.218,462.4,6),
(125,'Sohan','2024-01-27','Asia','Metro East','Stationery',2624.985,74,33.6,0.96,6711.218,264.2,5),
(126,'Gonind','2024-01-28','Europe','Metro West','Paper Products',703.710,50,110.7,0.98,4086.233,230.6,4),
(127,'Kunal','2024-01-29','North America','Urban Noth','Pens &Pencils',652.995,55,84.9,0.37,3382.523,119.9,3),
(128,'Rajat','2024-01-30','Oceania','Urban South','Notebooks',1359.764,34,15.2,0.39,2729.528,35.0,2),
(129,'Priya','2024-01-31','Port Louis','Rural North','Filing Supplies',1369.764,30,19.8,0.86,1369.764,19.8,1);
SELECT * FROM SalesData;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50),
    Region VARCHAR(50)
);
CREATE TABLE Orders1 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Category VARCHAR(50),
    Sales DECIMAL(12,3),
    Quantity INT,
    Profit DECIMAL(12,3),
    Discount DECIMAL(5,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Customers (CustomerID, CustomerName, Country, Region)
VALUES
(1,'Shyam','United States','North'),
(2,'Shalni','England','South'),
(3,'Hary','Finland','East'),
(4,'Ram','United Kingdom','West'),
(5,'Sam','South Africa','Central');
INSERT INTO Orders1 (OrderID, CustomerID, OrderDate, Category, Sales, Quantity, Profit, Discount)
VALUES
(101,1,'2024-01-03','Electronics',4499.985,79,450.7,0.12),
(102,2,'2024-01-04','Computers',7999.980,46,215.4,0.14),
(103,3,'2024-01-05','Laptops',2177.584,45,120.8,0.23),
(104,4,'2024-01-06','Desktop Computers',2549.985,23,185.2,0.06),
(105,5,'2024-01-07','Monitors',1889.990,78,95.4,0.22);

SELECT * FROM Customers;
SELECT * FROM Orders1;
SELECT
    c.CustomerID,
    c.CustomerName,
    c.Country,
    c.Region,
    o.OrderID,
    o.OrderDate,
    o.Category,
    o.Sales,
    o.Quantity,
    o.Profit,
    o.Discount
FROM Customers AS c
INNER JOIN Orders1 AS o
    ON c.CustomerID = o.CustomerID;
    ------------TOTAL SALES BY REGION------
SELECT
    c.Region,
    SUM(o.Sales) AS TotalSales
FROM Customers AS c
INNER JOIN Orders1 AS o
    ON c.CustomerID = o.CustomerID
GROUP BY c.Region
ORDER BY TotalSales DESC;
---PROFIT MARGIN BY CATEGORY---
SELECT
    Category,
    SUM(Sales) AS TotalSales,
    SUM(Profit) AS TotalProfit,
    ROUND((SUM(Profit) * 100.0) / SUM(Sales), 2) AS ProfitMargin
FROM Orders1
GROUP BY Category
ORDER BY ProfitMargin DESC;
------MONTHLY SALES TREND---
SELECT
    YEAR(OrderDate) AS SalesYear,
    MONTH(OrderDate) AS SalesMonth,
    SUM(Sales) AS TotalSales
FROM Orders1
GROUP BY YEAR(OrderDate), MONTH(OrderDate)
ORDER BY SalesYear, SalesMonth;
------------TOP 5 CUTOMER BY REVENUE---
SELECT TOP 5
    c.CustomerID,
    c.CustomerName,
    SUM(o.Sales) AS TotalRevenue
FROM Customers AS c
INNER JOIN Orders1 AS o
    ON c.CustomerID = o.CustomerID
GROUP BY
    c.CustomerID,
    c.CustomerName
ORDER BY
    TotalRevenue DESC;