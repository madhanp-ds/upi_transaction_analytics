--Q1. What is total transaction volume & value?

SELECT 
    COUNT(*) AS total_transactions,
    SUM("amount (INR)") AS total_amount,
    AVG("amount (INR)") AS avg_amount
FROM upi_data;


--Q2. What are peak transaction hours?
SELECT 
    hour_of_day,
    COUNT(*) AS total_transactions
FROM upi_data
GROUP BY hour_of_day
ORDER BY total_transactions DESC;


--Q3.Weekend vs Weekday behavior

SELECT 
    is_weekend,
    COUNT(*) AS transactions,
    SUM("amount (INR)") AS total_amount
FROM upi_data
GROUP BY is_weekend;



--Q4. Which states contribute most?

SELECT 
    sender_state,
    COUNT(*) AS transactions,
    SUM("amount (INR)") AS total_amount
FROM upi_data
GROUP BY sender_state
ORDER BY total_amount DESC;

--Q5.Age group behavior


SELECT 
    sender_age_group,
    COUNT(*) AS transactions,
    AVG("amount (INR)") AS avg_amount
FROM upi_data
GROUP BY sender_age_group
ORDER BY transactions DESC;



SELECT 
    sender_bank,
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN transaction_status = 'Success' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS success_rate
FROM upi_data
GROUP BY sender_bank
ORDER BY success_rate DESC;



SELECT 
    network_type,
    transaction_status,
    COUNT(*) AS total
FROM upi_data
GROUP BY network_type, transaction_status;




SELECT 
    sender_bank,
    COUNT(*) AS fraud_cases
FROM upi_data
WHERE fraud_flag = 1
GROUP BY sender_bank
ORDER BY fraud_cases DESC;



SELECT 
    DATE(timestamp) AS txn_date,
    COUNT(*) AS transactions,
    SUM("amount (INR)") AS total_amount
FROM upi_data
GROUP BY txn_date
ORDER BY total_amount desc;