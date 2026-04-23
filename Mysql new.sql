use business;

-- Database 
SELECT * FROM `update dataset 2`;

-- Total sales
SELECT SUM(Sales) AS Total_Sales 
FROM `update dataset 2`;

-- Sales by Region
SELECT Region, SUM(Sales) AS Total_Sales
FROM `update dataset 2`
GROUP BY Region;

-- Sales by Category
SELECT Category, SUM(Sales)
FROM `update dataset 2`
GROUP BY Category;

-- Top Products
SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM `update dataset 2`
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 5;

-- Monthly Sales
SELECT MONTH(`Order Date`) AS Month, SUM(Sales)
FROM `update dataset 2`
GROUP BY Month;

-- Profit by Sub-Category
SELECT `Sub-Category`, SUM(Profit)
FROM `update dataset 2`
GROUP BY `Sub-Category`;


CREATE TABLE orders AS
SELECT DISTINCT 
	'Order ID',
    'Order Date',
    `Customer ID`,
    `Category`, 
    `Sales`, 
    `Quantity`, 
    `Profit`, 
    `Discount`
FROM update_dataset_2; 

	CREATE TABLE Customers AS
    SELECT 
		'Customer ID',
        'Segment',
        'Country',
        'City',
        'State',
        'Region'
	FROM Customers; 
    
    SELECT 
    o.Order_ID, o.Order_Date, c.Customer_ID, c.Segment, c.Region, o.Sales, o.Profit
FROM Orders o
INNER JOIN Customers c ON o.Customer_ID = c.Customer_ID;


 

