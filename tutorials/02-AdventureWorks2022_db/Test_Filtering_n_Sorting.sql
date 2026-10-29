


USE AdventureWorks2022;
GO

-- 1. Filtering
-- Find products whose ListPrice is greater than 500. Display Name and ListPrice
SELECT
	productID,
	Name AS ProductName,
	ListPrice AS Price
FROM Production.Product
WHERE ListPrice > 500		-- Filtering products above 500
ORDER BY ListPrice DESC;

-- 2. Sorting and aliases
-- Display Name as ProductName and ListPrice as Price. Show the 10 most expensive products.
SELECT TOP(10)				-- Selects the Top 10 only
	productID,
	Name AS ProductName,
	ListPrice AS Price
FROM Production.Product
WHERE ListPrice > 500		-- Filtering products above 500
ORDER BY ListPrice DESC;

-- 3. Expressions
-- Display each product's Name, ListPrice, and a calculated price after a 20% discount, named SalePrice. Only include products with ListPrice above 100, and sort by SalePrice from lowest to highest.
SELECT			-- Selects the Top 10 only
	productID,
	Name AS ProductName,
	ListPrice AS Price,
	ListPrice * 0.80 AS SalePrice
FROM Production.Product
WHERE ListPrice > 100		-- Filtering products above 100
ORDER BY ListPrice ASC;
