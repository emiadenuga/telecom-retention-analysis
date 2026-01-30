# telecom-retention-analysis
Using customer and billing data to identify churn drivers and inform retention strategy

# Customer Retention & Revenue Risk Analysis (Telecom)

## Overview
This project analyzes customer demographics, service subscriptions, and billing behavior to identify key drivers of customer churn and quantify revenue-at-risk segments. The objective is to translate analytical findings into actionable retention strategies for a subscription-based telecom business.

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

Raw data is not included in this repository. A link to the dataset source is provided in `/data/raw/README.md`.

---

## Project Structure & Workflow

### 1. Data Preparation
**Location:** `/notebooks/01_data_cleaning.ipynb`

This step focuses on preparing the dataset for analysis, including:
- Handling missing or invalid values (e.g., billing fields)
- Standardizing categorical variables
- Creating derived features such as tenure groups
- Removing non-informative identifiers

The goal is to produce a clean, analysis-ready dataset for downstream exploration.

---

### 2. Exploratory Data Analysis (EDA)
**Location:** `/notebooks/02_exploratory_analysis.ipynb`

This notebook explores patterns and trends related to churn, including:
- Churn rates by contract type and tenure
- Relationship between monthly charges and churn
- Service combinations associated with higher or lower churn
- Identification of high-risk customer segments

Visualizations generated during EDA are saved to `/visuals`.

---

### 3. Churn & Revenue Risk Analysis
**Location:** `/notebooks/03_churn_analysis.ipynb`

This phase focuses on:
- Quantifying churn drivers from a business perspective
- Estimating revenue-at-risk by customer segment
- Prioritizing segments for retention based on potential impact

Optional modeling may be used to support prioritization, but the emphasis is on interpretability and business decision-making.

---

### 4. SQL Analysis
**Location:** `/sql/churn_analysis_queries.sql`

SQL queries are used to:
- Join and aggregate customer, service, and billing data
- Segment churn behavior by key dimensions
- Validate analytical findings across tools

---

## Key Insights (Example Placeholder)
- Customers on month-to-month contracts exhibit significantly higher churn than long-term contracts.
- Early-tenure customers with higher monthly charges represent the highest revenue risk.
- Certain service bundles are correlated with improved retention.

(Insights will be updated as analysis is completed.)

---

## Dashboard
**Location:** `/dashboard/dashboard_link.md`

An interactive dashboard summarizes key churn metrics, high-risk segments, and revenue impact for business stakeholders.

---

## Recommendations
Based on the analysis, potential recommendations include:
- blah

---

## Tools & Technologies
- SQL
- Python (pandas, numpy, matplotlib)
- Excel / Google Sheets
- Tableau or Power BI

---

## Next Steps
- Incorporate customer interaction or support data if available
- Track churn reduction impact of proposed retention strategies
- Expand analysis to include lifetime value estimation
- will be updated at later date ^just placeholder

---

## Contact
**Emioluwa Adenuga**  
LinkedIn: [https://www.linkedin.com/in/emioluwaadenuga/]
Email: [ettisa4641@gmail.com]

