/*
=========================================================
Project : Employee Attrition Intelligence System

Layer : Bronze

Purpose:

1. Store raw employee data exactly as received
2. Preserve source integrity
3. Enable audit and traceability
4. Perform ingestion quality checks
5. Create foundation for Silver transformations

Rules:

- No cleaning
- No transformations
- No feature engineering
- Raw source only

Flow:

Source CSV
    ↓
Bronze (Raw Data)
    ↓
Silver (Cleaned Data)
    ↓
Gold (Business Analytics)

=========================================================
*/


/*
----------------------------------------
RAW DATA VALIDATION
----------------------------------------
*/


-- Total records loaded

SELECT
COUNT(*) AS total_records
FROM bronze.hr_employee_raw;



-- Duplicate employee validation

SELECT

COUNT(*) AS total_records,

COUNT(DISTINCT EmployeeNumber)
AS unique_employees

FROM bronze.hr_employee_raw;



-- Missing value audit

SELECT

SUM(
CASE
WHEN MonthlyIncome IS NULL
THEN 1
ELSE 0
END
)

AS null_income,


SUM(
CASE
WHEN Department IS NULL
THEN 1
ELSE 0
END
)

AS null_department,


SUM(
CASE
WHEN Attrition IS NULL
THEN 1
ELSE 0
END
)

AS null_attrition

FROM bronze.hr_employee_raw;



-- Target distribution analysis

SELECT

Attrition,

COUNT(*) AS employee_count,

ROUND(

100.0 * COUNT(*)

/

SUM(COUNT(*)) OVER(),

2

)

AS percentage

FROM bronze.hr_employee_raw

GROUP BY Attrition;



-- Raw data preview

SELECT TOP 10 *
FROM bronze.hr_employee_raw;



/*
Expected Output:

Total Records : 1470

Unique Employees : 1470

Attrition:

No  ≈ 84%

Yes ≈ 16%

=========================================================
Bronze Layer Complete
=========================================================
*/
