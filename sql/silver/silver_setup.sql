
/*
=========================================================
Project : Employee Attrition Intelligence System

Layer : Silver

Purpose:

1. Clean raw data
2. Standardize values
3. Remove unnecessary columns
4. Prepare analytics-ready dataset
5. Improve downstream ML quality

Transformations:

- Trim text values
- Standardize categorical fields
- Handle nulls
- Remove unused columns

Flow:

Bronze (Raw)
    ↓
Silver (Cleaned)
    ↓
Gold (Business Layer)

=========================================================
*/


/*
Create Silver Employee Table
*/

SELECT

EmployeeNumber,

Age,


LTRIM(RTRIM(Attrition))
AS Attrition,


LTRIM(RTRIM(Department))
AS Department,


LTRIM(RTRIM(JobRole))
AS JobRole,


LTRIM(RTRIM(Gender))
AS Gender,


LTRIM(RTRIM(OverTime))
AS OverTime,


MonthlyIncome,

PercentSalaryHike,

JobSatisfaction,

EnvironmentSatisfaction,

RelationshipSatisfaction,

WorkLifeBalance,

PerformanceRating,

JobLevel,

DistanceFromHome,

TotalWorkingYears,

YearsAtCompany,

YearsInCurrentRole,

YearsSinceLastPromotion,

YearsWithCurrManager,

NumCompaniesWorked,

TrainingTimesLastYear

INTO silver.hr_employee_clean

FROM bronze.hr_employee_raw;



/*
Validation
*/


SELECT COUNT(*)
AS total_records
FROM silver.hr_employee_clean;



SELECT TOP 10 *
FROM silver.hr_employee_clean;



/*
Duplicate validation
*/


SELECT

COUNT(*)
AS total_rows,

COUNT(DISTINCT EmployeeNumber)
AS unique_employees

FROM silver.hr_employee_clean;



/*
Silver Layer Complete
*/
