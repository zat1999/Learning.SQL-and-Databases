USE AdventureWorks2022;
GO

-- 1.1 and 1.5
SELECT
	production.ProductID,
	production.Name,
	category.Name AS [Category],
	subcategory.Name AS [Sub-Category],
	production.ListPrice AS [ListPrice]
FROM Production.Product AS production
LEFT JOIN production.ProductSubcategory AS [subCategory]
	ON subCategory.ProductSubcategoryID = production.ProductSubcategoryID
LEFT JOIN production.ProductCategory AS [category]
	ON category.ProductCategoryID = subCategory.ProductCategoryID
ORDER BY 
    CASE                                        -- order by [0 or 1] then [category]
        WHEN category.Name IS NULL THEN 1       -- value defined if null or not
        ELSE 0
    END,
[Category] ASC



-- 1.2
;WITH RankedProducts AS (
    SELECT
        category.Name AS [Category],
        subcategory.Name AS [Sub-Category],
        production.Name AS [Product],
        production.ListPrice,
        ROW_NUMBER() OVER (                                 --  assigns a rank to each product within each subcategory
            PARTITION BY subcategory.ProductSubcategoryID   --  separates based on subcategory
            ORDER BY production.ListPrice DESC              --  order by most expensive item
        ) AS [Rank]
    FROM Production.Product AS production
    LEFT JOIN Production.ProductSubcategory AS subcategory
        ON subcategory.ProductSubcategoryID = production.ProductSubcategoryID
    LEFT JOIN Production.ProductCategory AS category
        ON category.ProductCategoryID = subcategory.ProductCategoryID
) SELECT
    Category,
    [Sub-Category],
    Product,
    ListPrice
FROM RankedProducts
WHERE [Rank] = 1    -- gets the most expensive item first
ORDER BY Category, [Sub-Category];


-- 1.3
DECLARE @MIN_PRICE money;
DECLARE @MAX_PRICE money;
SET @MAX_PRICE = 100
SET @MIN_PRICE = 50

SELECT
	production.ProductID,
	production.Name,
	production.ListPrice AS [ListPrice]
FROM Production.Product AS production
WHERE [ListPrice] >= @MIN_PRICE AND [ListPrice] <= @MAX_PRICE
ORDER BY [ListPrice] DESC

-- 1.4
SELECT
	production.ProductID,
	production.Name AS [Name],
	production.ListPrice AS [ListPrice]
FROM Production.Product AS production
ORDER BY [ListPrice], [Name] DESC