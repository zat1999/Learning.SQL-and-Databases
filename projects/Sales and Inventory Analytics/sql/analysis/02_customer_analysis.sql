USE AdventureWorks2022;
GO

-- 2.1
SELECT
	customer.CustomerID AS [CustomerID],
	person.FirstName,
	person.LastName,
	COUNT(orderHeader.CustomerID) AS [Number of Orders],
	ROUND(SUM(orderHeader.TotalDue),2) AS [Total Spend]
FROM Sales.Customer AS customer
LEFT JOIN Person.Person AS person
	ON customer.CustomerID = person.BusinessEntityID -- some customers represent stores, hence may not be a 'person'
INNER JOIN Sales.SalesOrderHeader AS orderHeader
	ON customer.CustomerID = orderHeader.CustomerID
GROUP BY customer.CustomerID, person.FirstName, person.LastName
ORDER BY [Number of Orders] DESC

-- 2.2
SELECT
	CustomerID,
	COUNT(CustomerID) AS [Number of Orders],
	ROUND(SUM(TotalDue),2) AS [Total]
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY [Total] DESC