/*
=========================================================
Project : Employee Attrition Intelligence System

Layer : Gold

Purpose:

1. Create business-ready tables
2. Support KPI reporting
3. Support Power BI dashboards
4. Support ML consumption

Outputs:

employee_fact

department_dim

attrition_summary

=========================================================
*/



/*
Department Dimension
*/


SELECT DISTINCT

Department

INTO gold.department_dim

FROM silver.hr_employee_clean;



/*
Employee Fact Table
*/


SELECT

EmployeeNumber,

Department,

Age,

Gender,

JobRole,

MonthlyIncome,

OverTime,

JobSatisfaction,

EnvironmentSatisfaction,

RelationshipSatisfaction,

WorkLifeBalance,

PerformanceRating,

YearsAtCompany,

YearsSinceLastPromotion,

NumCompaniesWorked,

Attrition

INTO gold.employee_fact

FROM silver.hr_employee_clean;



/*
Attrition Summary Table
*/


SELECT

Department,

COUNT(*) AS total_employees,


SUM(

CASE

WHEN Attrition='Yes'

THEN 1

ELSE 0

END

)

AS attrition_count,


ROUND(

100.0 *

SUM(

CASE

WHEN Attrition='Yes'

THEN 1

ELSE 0

END

)

/

COUNT(*),

2

)

AS attrition_rate

INTO gold.attrition_summary

FROM silver.hr_employee_clean

GROUP BY Department;



/*
Validation
*/


SELECT *
FROM gold.department_dim;


SELECT *
FROM gold.employee_fact;


SELECT *
FROM gold.attrition_summary;
