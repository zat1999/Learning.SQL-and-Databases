USE AdventureWorks2022;
GO

SELECT 
	COUNT(*) AS TotalProducts,
	AVG(ListPrice) AS AveragePrice,
	MAX(ListPrice) AS MaxPrice,
	MIN(ListPrice) AS MinPrice
FROM Production.Product
WHERE ReorderPoint > 300 AND ReorderPoint < 600;