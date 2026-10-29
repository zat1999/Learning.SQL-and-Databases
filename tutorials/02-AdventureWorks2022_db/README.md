# 02 - AdventureWorks2022 Database

This tutorial uses the AdventureWorks2022 sample database to practice querying a real-world schema. The scripts focus on exploring tables, filtering product data, and summarizing information from the `Production.Product` table.

## Files in this tutorial

| File | Purpose |
| --- | --- |
| [FindTables.sql](FindTables.sql) | Lists available tables in the database so you can explore the schema |
| [Production_Product.sql](Production_Product.sql) | Queries `Production.Product` and filters rows by reorder point |
| [Test_Filtering_n_Sorting.sql](Test_Filtering_n_Sorting.sql) | Demonstrates filtering with `WHERE`, sorting with `ORDER BY`, limiting rows with `TOP`, and column aliasing |
| [Test_Aggregate_Data.sql](Test_Aggregate_Data.sql) | Summarizes product data using aggregate functions such as `COUNT`, `AVG`, `MIN`, and `MAX` |
| [Test_Join.sql](Test_Join.sql) | Shows how to combine data from multiple tables with joins |

## Concepts

- Using a sample database (`AdventureWorks2022`)
- Querying a specific schema and table
- `SELECT` with filters and sorting
- Using `TOP` to limit results and `ORDER BY` to control row order
- Aggregate functions such as `COUNT`, `AVG`, `MIN`, and `MAX`
- Joining tables to combine related data
- Exploring metadata with table lists and schema inspection

## Run

Open the scripts in SQL Server Management Studio or Azure Data Studio and execute them against a SQL Server instance that has the AdventureWorks2022 database installed.

## Suggested workflow

1. Run `FindTables.sql` to inspect available tables.
2. Run `Production_Product.sql` to view product details for the selected filter range.
3. Run `Test_Filtering_n_Sorting.sql` to practice `WHERE`, `ORDER BY`, `TOP`, and aliases.
4. Run `Test_Aggregate_Data.sql` to review summary metrics.
5. Run `Test_Join.sql` to combine related data from multiple tables.
6. Experiment by changing filters, columns, joins, and aggregate functions.
