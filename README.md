# Employee Attrition Intelligence System

> Industry-level HR analytics system that predicts employee attrition risk using a layered SQL data warehouse, a Random Forest ML pipeline, and an interactive Power BI dashboard.

![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-T--SQL-CC2927?logo=microsoftsqlserver&logoColor=white)
![scikit-learn](https://img.shields.io/badge/scikit--learn-ML-F7931E?logo=scikitlearn&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![License](https://img.shields.io/badge/License-MIT-green)

---

## Overview

This project transforms raw HR data into actionable attrition insights through a complete pipeline — from a Bronze, Silver, Gold SQL data warehouse, to a Random Forest ML model generating risk scores, to a Power BI dashboard for stakeholder reporting.

Built on the IBM HR Analytics Employee Attrition & Performance dataset (1,470 employees x 35 features).

---

## Key Components

### SQL Data Warehouse
- Bronze Layer — raw data ingestion with validation
- Silver Layer — cleaning, null handling, type standardization
- Gold Layer — analytics-ready tables
- KPI Engine — attrition rate by department, job role, tenure, and overtime

### Exploratory Data Analysis
- Attrition trends across department, age, income, overtime, and marital status
- Correlation analysis and identification of high-risk employee segments

### Machine Learning Pipeline
- Feature encoding and engineering
- Random Forest Classifier for attrition prediction
- Per-employee attrition risk scores
- Evaluated with Accuracy, Precision, Recall, F1 Score, and ROC-AUC

### Power BI Dashboard
- Interactive visualization of attrition KPIs from the Gold layer
- Department, job role, and tenure-based breakdowns
- Risk score visualization for HR decision-making

---

## Repository Structure

```
Employee-Attrition-Intelligence-System/
│
├── python notebooks/      # EDA, feature engineering, ML pipeline
├── sql/                    # Bronze, Silver, Gold + KPI Engine scripts
├── powerbi/                # Power BI dashboard (.pbix)
├── HR-Employee-Attrition.csv
├── LICENSE
└── README.md
```

---

## Key Insights

- Overtime employees show significantly higher attrition
- Sales and Human Resources departments have the highest attrition rates
- Employees with less than 2 years tenure are most at risk
- Monthly income is inversely correlated with attrition
- Single employees and those with low job satisfaction show elevated risk

---

## Tech Stack

| Category | Tools |
|----------|-------|
| Languages | Python, T-SQL |
| ML | scikit-learn (Random Forest) |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| BI / Dashboard | Power BI |
| Database | SQL Server |

---

## Business Value

- Flags high-risk employees before they resign, using model-driven risk scores
- Surfaces the root causes of attrition by department, role, and tenure
- Provides an always-on Power BI dashboard for HR decision-making

---

## Author

**Azli Khan**
Aspiring Data Engineer | Data Analytics | Python | SQL | ML

[LinkedIn](https://www.linkedin.com/in/azli-khan07/) | [GitHub](https://github.com/Azli45)

---

## License

Licensed under the [MIT License](LICENSE).
