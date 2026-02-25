# Customer Retention & Revenue Risk Analysis (Telecom)

## Overview
This project analyzes customer demographics, service usage, and billing behavior to identify key drivers of customer churn and quantify revenue at risk. The goal is to translate analytical insights into actionable retention strategies for a subscription-based telecom business.


---

## Business Problem
A telecom company is experiencing elevated customer churn, impacting monthly recurring revenue. Leadership lacks visibility into which customer segments are most at risk and which factors are driving churn. The goal of this analysis is to identify churn drivers and translate insights into actionable retention strategies.

---

## Key Business Questions
- Customer & Revenue Questions
    1. Which customer segments have the highest churn rates?
    2. How does tenure impact churn and lifetime value?
    3. How do monthly charges and contract type relate to churn risk?
    4. Are customers with certain service bundles more likely to churn?
       
- Operational & Strategy Questions
    1. Which factors are the strongest indicators of churn from a business perspective?
    2. Which churned customers represent the highest revenue loss risk?
    3. What customer profiles should the business prioritize for retention efforts?
    4. What operational or pricing changes could reduce churn most effectively?

---

## Dataset
This project uses a publicly available sample telecom churn dataset provided by IBM Analytics, containing:

- Customer demographics
- Subscribed services
- Account tenure and contract details
- Billing and payment information
- Churn indicator

Raw data is included in `/data/raw`.

---

## Project Structure & Workflow

### 1. Data Preparation (SQL)
**Location:** `/sql`

Data cleaning and feature engineering were performed in SQL (SQLite), including:
- Handling missing values (e.g., `TotalCharges`)
- Standardizing categorical fields
- Creating features such as `tenure_group`, `services_count`, and `is_auto_pay`

The goal is to produce a clean, analysis-ready dataset for downstream exploration.

---

### 2. Data Vaildation
**Location:** `/notebooks/01_data_cleaning.ipynb`

Validates the cleaned dataset and ensures it is ready for analysis.

---

### 3. Exploratory Data Analysis (EDA) & Segment Analysis
Churn & Revenue Risk Analysis & Business Recommendations
**Location:** `/notebooks/02_exploratory_analysis.ipynb`

- Churn patterns by contract type, tenure, and services  
- Relationship between pricing and churn  
- Identification of high-risk customer segments 

---

### 4. Churn & Revenue Risk Analysis
**Location:** `/notebooks/03_churn_analysis.ipynb`

- Quantifies revenue at risk  
- Prioritizes customer segments  
- Estimates impact of retention strategies

---

## Key Insights
- Churn is the highest among early-tenure customers
- Contract type is the strongest driver of churn
- Higher monthly charges are associated with increased churn
- Revenue risk concentrated in a small number of segments

---

## Recommendations
Based on the study, potential recommendations include:
- Improve onboarding for new customers
- Incentivize long-term contract adoption
- Address pricing and value perception for high-paying customers 
- Promote auto pay enrollment to reduce churn
  
---

## Dashboard
**Location:** `/dashboard/dashboard_link.md`

An interactive dashboard highlights key churn metrics, segment risk, and revenue impact for business stakeholders.

---

## Tools & Technologies
- SQL
- Python (pandas, numpy, matplotlib)
- Excel
- Tableau or Power BI

---

## Next Steps
- Incorporate customer interaction or support data if available
- Track churn reduction impact of proposed retention strategies
- Expand analysis to include lifetime value estimation

---

## Contact
**Emioluwa Adenuga**  
LinkedIn: [https://www.linkedin.com/in/emioluwaadenuga/]

Email: [ettisa4641@gmail.com]

