-- 05_segment_table.sql

SELECT
  Contract,
  tenure_group,
  COUNT(*) AS customers,
  AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) AS churn_rate,
  AVG(MonthlyCharges) AS avg_monthly_charges,
  SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END) AS revenue_at_risk_mrr
FROM telecom_features
GROUP BY Contract, tenure_group
ORDER BY revenue_at_risk_mrr DESC;

