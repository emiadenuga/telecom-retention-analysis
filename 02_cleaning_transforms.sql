-- 02_cleaning_transforms.sql

DROP VIEW IF EXISTS telecom_clean;

CREATE VIEW telecom_clean AS
SELECT
  customerID,
  TRIM(gender) AS gender,
  CASE
    WHEN SeniorCitizen = 1 THEN 'Yes'
    ELSE 'No'
  END AS SeniorCitizen,
  TRIM(Partner) AS Partner,
  TRIM(Dependents) AS Dependents,  
  CAST(tenure AS INTEGER) AS tenure,
  CAST(MonthlyCharges AS REAL) AS MonthlyCharges,
  CASE
    WHEN TotalCharges IS NULL OR TRIM(TotalCharges) = '' THEN NULL
    ELSE CAST(TRIM(TotalCharges) AS REAL)
  END AS TotalCharges,
  TRIM(PhoneService) AS PhoneService,
  TRIM(MultipleLines) AS MultipleLines,
  TRIM(InternetService) AS InternetService,
  TRIM(OnlineSecurity) AS OnlineSecurity,
  TRIM(OnlineBackup) AS OnlineBackup,
  TRIM(DeviceProtection) AS DeviceProtection,
  TRIM(TechSupport) AS TechSupport,
  TRIM(StreamingTV) AS StreamingTV,
  TRIM(StreamingMovies) AS StreamingMovies,
  TRIM(Contract) AS Contract,
  TRIM(PaperlessBilling) AS PaperlessBilling,
  TRIM(PaymentMethod) AS PaymentMethod,
  TRIM(Churn) AS Churn
FROM telecom_raw;

