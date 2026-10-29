# Download and Restore AdventureWorks2022

The tutorials in [`tutorials/02-AdventureWorks2022_db`](../tutorials/02-AdventureWorks2022_db/README.md) use the AdventureWorks2022 OLTP sample database. The database backup is large, so download it from Microsoft rather than adding it to this repository.

## Requirements

- A running SQL Server 2022 or later instance.
- SQL Server Management Studio (SSMS), or another SQL Server client with database restore support.

SQL Server can't restore a backup created by a newer SQL Server version to an older version. If you use an older SQL Server instance, download the matching AdventureWorks backup from Microsoft's [sample database download page](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver17).

## Download the backup

Download the [AdventureWorks2022 OLTP backup](https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorks2022.bak). Choose the OLTP backup, not the Data Warehouse (`AdventureWorksDW2022`) or Lightweight (`AdventureWorksLT2022`) edition; the tutorials query tables such as `Production.Product` and `Sales.SalesOrderHeader`.

Do not commit the `.bak` file to this repository. Store it somewhere on the machine running SQL Server. If SQL Server cannot browse to the download location during restore, move the file to the instance's backup directory and ensure the SQL Server service account can read it.

## Restore with SSMS

1. Open SSMS and connect to the SQL Server instance.
2. In Object Explorer, right-click **Databases** and select **Restore Database...**.
3. Under **Source**, select **Device**, select the browse button (**...**), then **Add** and choose `AdventureWorks2022.bak`.
4. Confirm the destination database name is `AdventureWorks2022`.
5. On the **Files** page, confirm the restore paths are valid and do not overwrite files you need to keep.
6. Select **OK** to restore the database.

If a database named `AdventureWorks2022` already exists, choose another destination name or make sure you intend to replace it before restoring.

## Verify the restore

Run this query against the restored instance:

```sql
USE AdventureWorks2022;
GO

SELECT TOP (5) ProductID, Name, ListPrice
FROM Production.Product
ORDER BY ProductID;
```

The query should return product rows. You can now run the scripts in the [AdventureWorks2022 tutorial](../tutorials/02-AdventureWorks2022_db/README.md).
