-- 04_kpi_queries.sql

-- Overall churn rate
SELECT
  AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) AS churn_rate
FROM telecom_features;

-- Churn vs non-churn: avg tenure and charges
SELECT
  Churn,
  COUNT(*) AS customers,
  AVG(tenure) AS avg_tenure,
  AVG(MonthlyCharges) AS avg_monthly_charges
FROM telecom_features
GROUP BY Churn;

-- Revenue proxy totals (MRR proxy)
SELECT
  Churn,
  SUM(MonthlyCharges) AS total_mrr_proxy
FROM telecom_features
GROUP BY Churn;