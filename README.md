# 🧠 Employee Attrition Intelligence System

> An industry-grade HR analytics platform that predicts employee attrition risk using a layered SQL data warehouse, Python ML pipeline, and structured exploratory analysis.

![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-T--SQL-CC2927?logo=microsoftsqlserver&logoColor=white)
![scikit-learn](https://img.shields.io/badge/scikit--learn-ML-F7931E?logo=scikitlearn&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626?logo=jupyter&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📌 Overview

Employee attrition is one of the most costly challenges organizations face — from recruitment and training costs to lost institutional knowledge. This system delivers an **end-to-end intelligence pipeline** that transforms raw HR data into actionable predictions.

Built on the **IBM HR Analytics Employee Attrition & Performance** dataset (1,470 employees × 35 features), this project mirrors real-world enterprise data workflows using a **Bronze → Silver → Gold** medallion architecture combined with a machine learning pipeline for attrition risk scoring.

---

## 🏗️ Architecture

```
┌──────────────────────────────────────────────────────────────┐
│                      DATA PIPELINE                           │
│                                                              │
│  📥 Bronze Layer → 🔧 Silver Layer → 📊 Gold Layer + KPIs   │
│   Raw Ingestion     Cleaned & Validated   Analytics-Ready    │
└──────────────────────────────────────────────────────────────┘
         ↓                    ↓                    ↓
    SQL Warehouse        EDA Notebook         ML Pipeline
    (T-SQL Scripts)    (Pattern Analysis)   (Risk Scoring)
```

| Layer | Description |
|-------|-------------|
| 🥉 **Bronze** | Raw data ingestion from source CSV with validation checks |
| 🥈 **Silver** | Data cleaning, null handling, type casting, standardization |
| 🥇 **Gold** | Analytics-ready fact and dimension tables for reporting |
| ⚡ **KPI Engine** | Aggregated HR metrics: attrition rates, department breakdowns, tenure risk bands |

---

## ✅ What's Implemented

### 🗄️ SQL Data Warehouse
- Full **Bronze → Silver → Gold** medallion architecture in T-SQL
- **Data ingestion** from raw CSV with row-level validation
- **Silver layer** cleaning: null checks, type normalization, standardization
- **Gold layer** analytics tables ready for downstream consumption
- **KPI Engine** generating key HR metrics: attrition rate by department, job role, tenure band, and overtime status

### 🔍 Exploratory Data Analysis (EDA)
- Attrition distribution and class imbalance analysis
- Patterns by Department, Job Role, Age, Monthly Income, Overtime, and Marital Status
- Correlation heatmaps and feature-target relationship visualizations
- Identification of the highest-risk employee segments

### 🔧 Feature Engineering
- Encoding of categorical variables
- Derivation of new predictive features from existing attributes
- Selection of high-signal features for model input

### 🤖 Machine Learning Pipeline
- **Model:** Random Forest Classifier (baseline)
- **Target:** `Attrition` (Binary: Yes / No)
- **Train/Test Split** with stratification to respect class distribution
- **Risk Score Generation** — probability scores per employee for attrition likelihood

### 📏 Evaluation Metrics
| Metric | Description |
|--------|-------------|
| Accuracy | Overall correct predictions |
| Precision | Correctness of positive (attrition) predictions |
| Recall | Coverage of actual attrition cases |
| F1 Score | Harmonic mean of Precision and Recall |
| ROC-AUC | Discriminative power across classification thresholds |

---

## 🗂️ Repository Structure

```
Employee-Attrition-Intelligence-System/
│
├── data/
│   └── HR-Employee-Attrition.csv       # Source dataset (IBM HR Analytics)
│
├── sql/
│   ├── 01_creation/                        # Database and schema initialization
│   ├── 02_bronze/                       # Raw ingestion scripts
│   ├── 03_silver/                       # Cleaning and transformation
│   ├── 04_gold/                         # Analytics-ready layer
│   └── 05_kpi_engine/                   # HR KPI aggregations
│
├── notebooks/
│   ├── 01_eda.ipynb                     # Exploratory Data Analysis
│   └── 02_ml_pipeline.ipynb            # Feature Engineering + ML Pipeline
│
├── .gitignore
├── LICENSE
└── README.md
```

---

## 📊 Key Insights from EDA

- Employees in **Sales** and **Human Resources** show the highest attrition rates
- **Overtime workers** are significantly more likely to leave the organization
- **Single employees** and those with **low job satisfaction** exhibit elevated risk
- Employees with **fewer than 2 years at the company** are most vulnerable to early departure
- **Monthly income** is a strong inverse predictor of attrition

---

## 🚀 Getting Started

### Prerequisites

```bash
pip install pandas numpy scikit-learn matplotlib seaborn jupyter
```

### Run the Notebooks

```bash
# Clone the repository
git clone https://github.com/Azli45/Employee-Attrition-Intelligence-System.git
cd Employee-Attrition-Intelligence-System

# Launch Jupyter
jupyter notebook
```

Open notebooks in order:
1. `notebooks/01_eda.ipynb` — Explore and understand the data
2. `notebooks/02_ml_pipeline.ipynb` — Feature engineering, model training, risk scoring

### SQL Layer

Run scripts in SQL Server (or compatible environment) in sequence:

```
sql/01_creation/       → Initialize database and schema
sql/02_bronze/      → Ingest raw data
sql/03_silver/      → Clean and transform
sql/04_gold/        → Build analytics tables
sql/05_kpi_engine/  → Generate HR KPIs
```

---

## 📈 Dataset

**IBM HR Analytics Employee Attrition & Performance**
- Source: [Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset)
- 1,470 employee records × 35 attributes
- Key features: Age, Department, Job Role, Monthly Income, Overtime, Job Satisfaction, Years at Company, and more

---

## 🛠️ Tech Stack

| Category | Tools |
|----------|-------|
| Languages | Python 3.10+, T-SQL |
| ML Library | scikit-learn |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Notebook Environment | Jupyter Notebook |
| Database | SQL Server |

---

## 🔮 Future Enhancements

Features planned for upcoming iterations:

- [ ] **Advanced ML Models** — XGBoost, Logistic Regression, Decision Tree benchmarking
- [ ] **Class Imbalance Handling** — SMOTE oversampling
- [ ] **Feature Scaling** — StandardScaler / MinMaxScaler pipeline
- [ ] **Model Explainability** — SHAP values for per-employee prediction explanations
- [ ] **Model Deployment** — REST API endpoint for real-time risk scoring

---

## 🎯 Business Value

This system enables HR teams to:
- Identify **high-risk employees** before they resign using data-driven risk scores
- Understand the **root causes** of attrition by department, role, and tenure
- Make **informed retention decisions** — salary reviews, workload balancing, promotion planning
- Query HR KPIs directly from the **Gold layer** without touching raw data

---

## 👤 Author

**Azli Khan**
Aspiring Data Engineer | HR Analytics | Python | SQL | Machine Learning

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-0077B5?logo=linkedin)](https://www.linkedin.com/in/azli-khan07/)
[![GitHub](https://img.shields.io/badge/GitHub-Azli45-181717?logo=github)](https://github.com/Azli45)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

---

> ⭐ If you found this project helpful, consider giving it a star!
