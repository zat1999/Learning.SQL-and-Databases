USE AdventureWorks2022;
GO

-- Test Aggregate Functions
SELECT 
	COUNT(*) AS TotalProducts,
	AVG(ListPrice) AS AveragePrice,
	MAX(ListPrice) AS MaxPrice,
	MIN(ListPrice) AS MinPrice
FROM Production.Product
WHERE ReorderPoint > 300 AND ReorderPoint < 600;

-- 1. COUNT and GROUP BY
-- Count how many products belong to each ProductSubcategoryID. Display the subcategory ID and the count.
SELECT
	ProductSubcategoryID,
	COUNT(*) AS TotalProducts
FROM Production.Product
GROUP BY ProductSubcategoryID;

-- 2. AVG and HAVING
-- Group products by ProductSubcategoryID and calculate their average ListPrice. Only show groups whose average price is greater than 500.
SELECT
	ProductSubcategoryID,
	AVG(ListPrice) AS "Average Price"
FROM Production.Product
GROUP BY ProductSubcategoryID
HAVING AVG(ListPrice) > 500;

-- 3.Sales analysis
-- For each CustomerID in Sales.SalesOrderHeader, calculate the number of orders and the total TotalDue. Only show customers whose total exceeds 20,000, sorted from highest total to lowest.
SELECT
	CustomerID,
	COUNT(*) AS "Number of Orders",
	ROUND(SUM(TotalDue),2) AS [Total Due]
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
HAVING SUM(TotalDue) > 20000
ORDER BY [Total Due] DESC