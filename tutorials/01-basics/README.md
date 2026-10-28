# 01 - SQL Basics

This tutorial introduces core SQL fundamentals using Microsoft SQL Server. The goal is to create a small practice database, populate it with sample product data, and query the rows that match a condition.

## Files in this tutorial

| File | Purpose |
| --- | --- |
| [BasicQuery.sql](BasicQuery.sql) | Creates the `SQLExamPractice` database and the `Products` table, then inserts sample rows |
| [BasicSelect.sql](BasicSelect.sql) | Uses the database to return products whose price is above 40 |

## Concepts

- `CREATE DATABASE` and `USE`
- `CREATE TABLE`, data types, primary keys, and constraints
- `INSERT INTO`
- `SELECT`, `WHERE`, and `ORDER BY`

## Run

Open the scripts in SQL Server Management Studio or Azure Data Studio and execute them against a SQL Server instance. The scripts create a database named `SQLExamPractice`, so make sure you have permission to create databases and that the name does not conflict with an existing database.

## Typical workflow

1. Run `BasicQuery.sql` to create the database and insert sample data.
2. Run `BasicSelect.sql` to query the records.
3. Review the output and experiment with different filter conditions.
