/*
========================================

Silver Layer

Purpose:

1. Clean raw employee data

2. Standardize text fields

3. Remove unnecessary columns

4. Prepare curated dataset

========================================
*/


/* Safety */

IF OBJECT_ID(

'clean_zone.employee_curated',

'U'

)

IS NOT NULL

DROP TABLE clean_zone.employee_curated;



/*
Create Clean Dataset
*/


SELECT

EmployeeID,

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

PerformanceRating,

JobSatisfaction,

EnvironmentSatisfaction,

RelationshipSatisfaction,

WorkLifeBalance,

DistanceFromHome,

JobLevel,

YearsAtCompany,

YearsInCurrentRole,

YearsSinceLastPromotion,

YearsWithCurrManager,

TotalWorkingYears,

TrainingTimesLastYear,

NumCompaniesWorked

INTO clean_zone.employee_curated

FROM raw_zone.employee_hr_source;



/*
Validation
*/


SELECT

COUNT(*)

AS total_records

FROM clean_zone.employee_curated;



SELECT

COUNT(DISTINCT EmployeeID)

AS unique_employees

FROM clean_zone.employee_curated;



SELECT TOP 10 *

FROM clean_zone.employee_curated;