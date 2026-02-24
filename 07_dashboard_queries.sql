-- 06_dashboard_queries.sql

-- Card 1: Total customers
SELECT COUNT(*) AS total_customers
FROM telecom_features;

-- Card 2: Churn rate
SELECT AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) AS churn_rate
FROM telecom_features;

-- Card 3: Revenue at risk (MRR proxy)
SELECT SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END) AS revenue_at_risk_mrr
FROM telecom_features;

-- Chart: churn by contract
SELECT
  Contract,
  AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) AS churn_rate,
  COUNT(*) AS customers
FROM telecom_features
GROUP BY Contract
ORDER BY churn_rate DESC;

-- Chart: churn by tenure group
SELECT
  tenure_group,
  AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) AS churn_rate,
  COUNT(*) AS customers
FROM telecom_features
GROUP BY tenure_group
ORDER BY tenure_group ASC;

-- Chart: churn by internet service
SELECT
  InternetService,
  AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) AS churn_rate,
  COUNT(*) AS customers
FROM telecom_features
GROUP BY InternetService
ORDER BY churn_rate DESC;