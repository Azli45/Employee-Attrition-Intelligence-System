/*
=========================================
Employee Attrition Intelligence System

Database Foundation Setup
=========================================
*/

CREATE DATABASE WorkforceIntelDW;
GO

USE WorkforceIntelDW;
GO


/* Warehouse Zones */

CREATE SCHEMA raw_zone;
GO

CREATE SCHEMA clean_zone;
GO

CREATE SCHEMA insight_zone;
GO


/* Raw Employee Landing Table */

CREATE TABLE raw_zone.employee_hr_source (

EmployeeID INT PRIMARY KEY,

Age INT,

Attrition VARCHAR(20),

BusinessTravel VARCHAR(50),

DailyRate INT,

Department VARCHAR(100),

DistanceFromHome INT,

Education INT,

EducationField VARCHAR(100),

EmployeeCount INT,

EnvironmentSatisfaction INT,

Gender VARCHAR(20),

HourlyRate INT,

JobInvolvement INT,

JobLevel INT,

JobRole VARCHAR(100),

JobSatisfaction INT,

MaritalStatus VARCHAR(30),

MonthlyIncome INT,

MonthlyRate INT,

NumCompaniesWorked INT,

Over18 VARCHAR(5),

OverTime VARCHAR(10),

PercentSalaryHike INT,

PerformanceRating INT,

RelationshipSatisfaction INT,

StandardHours INT,

StockOptionLevel INT,

TotalWorkingYears INT,

TrainingTimesLastYear INT,

WorkLifeBalance INT,

YearsAtCompany INT,

YearsInCurrentRole INT,

YearsSinceLastPromotion INT,

YearsWithCurrManager INT

);