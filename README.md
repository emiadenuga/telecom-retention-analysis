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

---

### 3. Churn & Revenue Risk Analysis
**Location:** `/notebooks/03_churn_analysis.ipynb`

This phase focuses on:
- Quantifying churn drivers from a business perspective
- Estimating revenue-at-risk by customer segment
- Prioritizing segments for retention based on potential impact

Optional modeling may be used to support prioritization, but the emphasis is on interpretability and business decision-making.
