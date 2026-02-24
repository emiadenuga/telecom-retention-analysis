-- 06_top_risk_profiles.sql

-- Create a table of detailed customer risk profiles
DROP TABLE IF EXISTS top_risk_profiles;

CREATE TABLE top_risk_profiles AS
-- Step 1: Build profile-level risk
SELECT 
	Contract,
	tenure_group,
	InternetService,
	is_auto_pay,
	COUNT(*) AS customers,
	AVG(CASE WHEN Churn = 'Yes' THEN 1.0 ELSE 0.0 END) AS churn_rate,
	AVG(MonthlyCharges) AS avg_monthly_charges,
	SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END) AS revenue_at_risk_mrr
FROM telecom_features
GROUP BY Contract, tenure_group, InternetService,is_auto_pay
-- Step 2: Filter and rank the highest-risk profiles
HAVING COUNT(*) >= 40
AND SUM(CASE WHEN Churn = 'Yes' THEN MonthlyCharges ELSE 0 END) > 0
ORDER BY (churn_rate * avg_monthly_charges * customers) DESC;
