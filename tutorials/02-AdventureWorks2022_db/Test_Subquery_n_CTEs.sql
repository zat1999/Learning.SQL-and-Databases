USE AdventureWorks2022;
GO

-- Subquery: Query nested in another query
-- Here it finds the products that cost more than the average product price.
SELECT
    ProductID,
    Name,
    ListPrice
FROM Production.Product
WHERE ListPrice > (
    SELECT AVG(ListPrice)
    FROM Production.Product
);

-- Using IN
SELECT CustomerID
FROM Sales.Customer
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Sales.SalesOrderHeader
);

-- Using CTE (Common Table Expression)
;WITH CustomerSpending AS (
    SELECT
        CustomerID,
        SUM(TotalDue) AS TotalSpent
    FROM Sales.SalesOrderHeader
    GROUP BY CustomerID
)
SELECT
    CustomerID,
    TotalSpent
FROM CustomerSpending
WHERE TotalSpent > 10000
ORDER BY TotalSpent DESC;

-- 1. Subquery
-- Find all products whose ListPrice is greater than the average ListPrice.
SELECT *
FROM Production.Product
WHERE ListPrice > (
    SELECT AVG(ListPrice)
    FROM Production.Product
)

-- 2. CTE
-- Calculate total spending for each customer and display only customers who have spent more than 10,000.

;WITH Customer AS (
    SELECT
        CustomerID,
        SUM(TotalDue) AS Total
    FROM Sales.SalesOrderHeader as salesOrder
    GROUP BY CustomerID
) SELECT
    CustomerID,
    Total
FROM Customer
WHERE Total > 10000
ORDER BY Total DESC

-- 3. Window function
-- Display each sales order alongside its customer's order number, ordered by OrderDate.

SELECT 
    CustomerID,
    SalesOrderID,
    SalesOrderNumber,
    CAST(OrderDate AS DATE) AS OrderDate,
    ROW_NUMBER() OVER (
        PARTITION BY CustomerID
        ORDER BY OrderDate, SalesOrderID
        ) AS CustomerOrderNumber
FROM Sales.SalesOrderHeader

-- 4. Combine techniques
-- Rank customers by their total spending, showing the highest spender first.

;WITH CustomerSpending AS (
    SELECT
        CustomerID,
        SUM(TotalDue) AS TotalSpent
    FROM Sales.SalesOrderHeader AS salesOrder
    GROUP BY CustomerID
) SELECT
    CustomerID,
    ROUND(TotalSpent,2) AS TotalSpent,
    RANK() OVER (
        ORDER BY TotalSpent DESC
        ) AS [SpendRank]
FROM CustomerSpending
