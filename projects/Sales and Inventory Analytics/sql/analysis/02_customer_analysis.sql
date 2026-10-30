USE AdventureWorks2022;
GO

SELECT
	CustomerID,
	COUNT(CustomerID) AS [Number of Orders]
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY [Number of Orders] DESC