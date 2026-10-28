USE SQLExamPractice;
GO

-- Retrieve data
SELECT *
FROM Products
WHERE Price > 60
ORDER BY Price DESC;