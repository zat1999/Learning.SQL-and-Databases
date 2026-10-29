USE AdventureWorks2022;
GO

-- Basic Example of SELECT, ORDER BY, WHERE

SELECT  
	ProductID,
	Name,
	ProductNumber,
	ReorderPoint,
	ListPrice
FROM Production.Product
WHERE ReorderPoint > 300 AND ReorderPoint < 600
ORDER BY ReorderPoint DESC;