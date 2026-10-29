USE AdventureWorks2022;
GO

SELECT
	production.ProductID,
	production.Name,
	category.Name AS [Category],
	subcategory.Name AS [Sub-Category],
	production.ListPrice AS [ListPrice],
	production.StandardCost AS [StandardCost]
FROM Production.Product AS production
LEFT JOIN production.ProductSubcategory AS [subCategory]
	ON subCategory.ProductSubcategoryID = production.ProductSubcategoryID
LEFT JOIN production.ProductCategory AS [category]
	ON category.ProductCategoryID = subCategory.ProductCategoryID