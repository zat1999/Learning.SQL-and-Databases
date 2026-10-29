# Sales and Inventory Analytics

## Scenario

As a retail data analyst, explore which products sell best, which customers spend the most, and which products need restocking.

## Data source and SQL dialect

This project uses the **AdventureWorks2022** sample database on **Microsoft SQL Server**. Run project queries against that database and use T-SQL syntax.

## Analysis scope

- **Product analysis:** Review product categories and prices.
- **Customer analysis:** Understand order activity and customer spending.
- **Sales analysis:** Compare revenue and product sales over time and by category.
- **Inventory analysis:** Compare stock across locations and identify restocking priorities.

## Folder guide

```text
Sales and Inventory Analytics/
├── data/
│   └── processed/    # Put any cleaned or transformed datasets here.
├── requirements/     # High- and low-level requirements and acceptance criteria.
├── reports/          # Save finished analysis outputs, exports, or report files here.
└── sql/
    ├── analysis/     # Queries for exploring and answering the analysis requirements.
    └── reporting/    # Queries prepared to produce recurring or final reports.
```

## How to use the project

1. Connect to the AdventureWorks2022 database in SQL Server.
2. Use the CSVs in `requirements/` to choose an analysis question and check its acceptance criteria.
3. Write exploratory and requirement-focused T-SQL queries in `sql/analysis/`; put finalized report queries in `sql/reporting/`.
4. If needed, put cleaned or transformed datasets in `data/processed/`.
5. Save completed outputs in `reports/`. Include the reporting period and a brief description in each output's filename or accompanying notes.

## Requirements

- [`high_level_requirement.csv`](requirements/high_level_requirement.csv) summarizes the four analysis areas.
- [`low_level_requirement.csv`](requirements/low_level_requirement.csv) lists detailed requirements and their acceptance criteria.
