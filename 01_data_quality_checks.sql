-- 01_data_quality_checks.sql

SELECT COUNT(*) AS row_count
FROM telecom_raw;

SELECT COUNT(DISTINCT customerID) AS distinct_customers
FROM telecom_raw;

SELECT
  (COUNT(*) - COUNT(DISTINCT customerID)) AS duplicate_rows
FROM telecom_raw;

SELECT customerID, COUNT(*) AS cnt
FROM telecom_raw
GROUP BY customerID
HAVING COUNT(*) > 1;

SELECT
  SUM(CASE WHEN TotalCharges IS NULL OR TRIM(TotalCharges) = '' THEN 1 ELSE 0 END) AS missing_totalcharges,
  COUNT(*) AS total_rows
FROM telecom_raw;

SELECT Contract, COUNT(*) AS customers
FROM telecom_raw
GROUP BY Contract
ORDER BY customers DESC;