USE AdventureWorks2022;
GO

-- Basic Example of Inner Join
SELECT
	p.ProductID,
	p.Name AS ProductName,
	ps.Name AS SubCategoryName
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS ps
	ON p.ProductSubcategoryID = ps.ProductSubcategoryID
ORDER BY ps.Name, p.Name

-- 1. Product details
-- Use INNER JOIN to display ProductID, ProductName, ListPrice, and ProductSubcategory name.

SELECT
	p.ProductID,
	p.Name AS [Product Name],
	ps.Name AS [Sub-Category],
	p.ListPrice AS [Price]
FROM Production.Product AS p
INNER JOIN Production.ProductSubcategory AS ps
	ON p.ProductSubcategoryID = ps.ProductSubcategoryID
ORDER BY [Sub-Category],[Product Name]

-- 2. Keep unmatched products
-- Use LEFT JOIN to list every product and its subcategory name. Show only products whose subcategory name is NULL.

SELECT 
	p.ProductID,
	p.Name AS [ProductName],
	ps.Name AS [SubCategory]
FROM Production.Product AS p
LEFT JOIN Production.ProductSubcategory AS ps
	ON p.ProductSubcategoryID = ps.ProductSubcategoryID
	WHERE ps.Name IS NULL
ORDER BY [ProductName]

-- 3. Count products
-- Display each subcategory name and its product count. Show only subcategories containing more than 10 products.

SELECT
	ps.Name AS [SubCategory],
	COUNT(p.Name) AS TotalProducts
FROM Production.Product AS p
RIGHT JOIN Production.ProductSubcategory AS ps
	ON p.ProductSubcategoryID = ps.ProductSubcategoryID
GROUP BY ps.Name
HAVING COUNT(p.Name) > 10
ORDER BY [SubCategory]

-- 4. Sales analysis
-- Display each customer's CustomerID, number of orders, and total spending, along with the customer's name from Sales.Customer and Person.Person where applicable.
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
ORDER BY [Total Spend] DESC

