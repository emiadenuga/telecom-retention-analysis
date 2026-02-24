-- 08_kpi_summary.sql
DROP TABLE IF EXISTS kpi_summary;

CREATE TABLE kpi_summary AS
-- total number of custmers
SELECT 'total_customers' AS metric, COUNT(*) AS VALUE
FROM telecom_features

UNION ALL
--
SELECT  'churn_rate',
	AVG (CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END)
FROM telecom_features

UNION ALL
--
SELECT  'avg_tenure_churned',
	AVG(CASE WHEN Churn = 'Yes' THEN tenure END)
FROM telecom_features

UNION ALL
--
SELECT 'avg_tenure_retained',
	AVG(CASE WHEN Churn = 'No' THEN tenure END)
FROM telecom_features

UNION ALL
--
SELECT 'avg_monthly_charges_churned',
	AVG(CASE WHEN Churn = 'Yes' THEN MonthlyCharges END)
FROM telecom_features

UNION ALL
--
SELECT 'avg_monthly_charges_retained',
	AVG(CASE WHEN Churn = 'No' THEN MonthlyCharges END)
FROM telecom_features

UNION ALL
--
SELECT 'revenue_at_risk_mrr',
	SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END)
FROM telecom_features;