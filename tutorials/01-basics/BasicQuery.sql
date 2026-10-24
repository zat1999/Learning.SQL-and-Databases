-- Create a practice database
CREATE DATABASE SQLExamPractice;
GO

USE SQLExamPractice;
GO

-- Create a table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) CHECK (Price >= 0),
    Stock INT DEFAULT 0
);
GO

-- Insert sample data
INSERT INTO Products (ProductID, ProductName, Price, Stock)
VALUES
    (1, 'Keyboard', 120.00, 15),
    (2, 'Mouse', 50.00, 30),
    (3, 'Monitor', 650.00, 8);
GO

