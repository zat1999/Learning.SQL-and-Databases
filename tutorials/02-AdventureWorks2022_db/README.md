# 02 - AdventureWorks2022 Database

This tutorial uses the AdventureWorks2022 sample database to practice querying a real-world schema. The scripts focus on exploring tables and retrieving meaningful product information from the `Production.Product` table.

## Files in this tutorial

| File | Purpose |
| --- | --- |
| [FindTables.sql](FindTables.sql) | Lists all base tables in the database so you can explore the schema |
| [Production_Product.sql](Production_Product.sql) | Queries `Production.Product` and filters rows based on reorder point |
| [Production_Product_Count.sql](Production_Product_Count.sql) | Summarizes product data with totals and aggregate metrics |

## Concepts

- Using a sample database (`AdventureWorks2022`)
- Querying a specific schema and table
- `SELECT` with filters and sorting
- Aggregate functions like `COUNT`, `AVG`, `MIN`, and `MAX`
- Exploring metadata with `INFORMATION_SCHEMA.TABLES`

## Run

Open the scripts in SQL Server Management Studio or Azure Data Studio and execute them against a SQL Server instance that has the AdventureWorks2022 database installed.

## Suggested workflow

1. Run `FindTables.sql` to inspect available tables.
2. Run `Production_Product.sql` to view product details for a filtered range.
3. Run `Production_Product_Count.sql` to review summary metrics.
4. Experiment by changing filters, columns, or aggregate functions.
