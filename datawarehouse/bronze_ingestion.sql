/*
==================================
Bronze Layer

Purpose:

1. Validate raw ingestion

2. Check duplicates

3. Check null values

4. Profile source data

==================================
*/


-- Total records

SELECT

COUNT(*)

AS total_records

FROM raw_zone.employee_hr_source;



-- Employee uniqueness validation

SELECT

COUNT(*)

AS total_rows,

COUNT(DISTINCT EmployeeID)

AS unique_employees

FROM raw_zone.employee_hr_source;



-- Missing value analysis

SELECT

SUM(

CASE

WHEN Department IS NULL

THEN 1

ELSE 0

END

)

AS missing_department,


SUM(

CASE

WHEN MonthlyIncome IS NULL

THEN 1

ELSE 0

END

)

AS missing_income,


SUM(

CASE

WHEN Attrition IS NULL

THEN 1

ELSE 0

END

)

AS missing_attrition

FROM raw_zone.employee_hr_source;



-- Attrition distribution

SELECT

Attrition,

COUNT(*)

AS employee_count,

ROUND(

100.0 *

COUNT(*)

/

SUM(COUNT(*))

OVER(),

2

)

AS percentage

FROM raw_zone.employee_hr_source

GROUP BY Attrition;



-- Raw preview

SELECT TOP 10 *

FROM raw_zone.employee_hr_source;