-- 03_feature_engineering.sql

DROP VIEW IF EXISTS telecom_features;

CREATE VIEW telecom_features AS
SELECT
	*,
	CASE
		WHEN tenure BETWEEN 0 AND 6 THEN '0-6'
		WHEN tenure BETWEEN 7 AND 12 THEN '7-12'
		WHEN tenure BETWEEN 13 AND 24 THEN '13-24'
		ELSE '25+'
	END AS tenure_group,
	
	CASE 
		WHEN tenure = 0 OR tenure IS NULL OR TotalCharges IS NULL THEN NULL
		ELSE TotalCharges / tenure
	END AS avg_charge_per_month,
	
	(
	CASE WHEN OnlineSecurity = 'Yes' THEN 1 ELSE 0 END +
	CASE WHEN OnlineBackup = 'Yes' THEN 1 ELSE 0 END +
	CASE WHEN DeviceProtection ='Yes' THEN 1 ELSE 0 END +
	CASE WHEN TechSupport = 'Yes' THEN 1 ELSE 0 END +
	CASE WHEN StreamingTV = 'Yes' THEN 1 ELSE 0 END +
	CASE WHEN StreamingMovies = 'Yes' THEN 1 ELSE 0 END
	) AS services_count,
	
	CASE 
		WHEN PaymentMethod IN ('Bank transfer (automatic)', 'Credit card (automatic)') THEN 1 ELSE 0
	END AS _is_auto_pay,
	
	CASE 
		WHEN MonthlyCharges >= 80 THEN 1 ELSE 0 
	END AS is_high_monthly_charge
	FROM telecom_clean;