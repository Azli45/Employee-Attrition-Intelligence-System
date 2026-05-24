/*
=====================================

KPI ENGINE

Purpose:

Business reporting metrics

=====================================
*/


/*
1. Department Attrition Rate
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

FROM insight_zone.employee_fact

GROUP BY Department;



/*
2. Average Tenure Of Employees Who Left
*/


SELECT

ROUND(

AVG(

CAST(
YearsAtCompany
AS FLOAT

)

),

2

)

AS avg_tenure_before_exit

FROM insight_zone.employee_fact

WHERE Attrition='Yes';



/*
3. Estimated Replacement Cost
*/


SELECT

SUM(

MonthlyIncome*6

)

AS estimated_replacement_cost

FROM insight_zone.employee_fact

WHERE Attrition='Yes';



/*
4. Overtime Attrition Analysis
*/


SELECT

OverTime,

COUNT(*) total_employee,

SUM(

CASE

WHEN Attrition='Yes'

THEN 1

ELSE 0

END

)

AS attrition_count

FROM insight_zone.employee_fact

GROUP BY OverTime;



/*
5. Satisfaction Risk Analysis
*/


SELECT

JobSatisfaction,

COUNT(*) employee_count,

SUM(

CASE

WHEN Attrition='Yes'

THEN 1

ELSE 0

END

)

AS attrition_count

FROM insight_zone.employee_fact

GROUP BY JobSatisfaction

ORDER BY JobSatisfaction;
