/*
========================================

Gold Layer

Purpose:

1. Business KPI Layer

2. Reporting Tables

3. Analytics Consumption

========================================
*/


/* Safety */


IF OBJECT_ID(
'insight_zone.department_dimension',
'U'
)
IS NOT NULL

DROP TABLE insight_zone.department_dimension;



IF OBJECT_ID(
'insight_zone.employee_fact',
'U'
)
IS NOT NULL

DROP TABLE insight_zone.employee_fact;



IF OBJECT_ID(
'insight_zone.attrition_kpi',
'U'
)
IS NOT NULL

DROP TABLE insight_zone.attrition_kpi;



/*
Department Dimension
*/


SELECT DISTINCT

Department

INTO insight_zone.department_dimension

FROM clean_zone.employee_curated;



/*
Employee Fact Table
*/


SELECT

Age,

Department,

Gender,

JobRole,

MonthlyIncome,

OverTime,

JobSatisfaction,

EnvironmentSatisfaction,

RelationshipSatisfaction,

WorkLifeBalance,

YearsAtCompany,

YearsInCurrentRole,

YearsSinceLastPromotion,

TotalWorkingYears,

NumCompaniesWorked,

Attrition

INTO insight_zone.employee_fact

FROM clean_zone.employee_curated;



/*
Attrition KPI Table
*/


SELECT

Department,

COUNT(*)

AS total_employees,


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

INTO insight_zone.attrition_kpi

FROM clean_zone.employee_curated

GROUP BY Department;



/*
Validation
*/


SELECT *
FROM insight_zone.department_dimension;



SELECT TOP 10 *
FROM insight_zone.employee_fact;



SELECT *
FROM insight_zone.attrition_kpi;