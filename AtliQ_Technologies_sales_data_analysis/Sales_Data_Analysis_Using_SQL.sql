-- Check where the currency is in USD not in INR
SELECT * 
FROM sales.transactions
WHERE currency = "USD";

-- See the transactions from 2020
SELECT *
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
WHERE year = 2020
;

-- Check the total sales amount of the year 2020
SELECT SUM(t.sales_amount)
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
WHERE year = 2020
;

-- Distinct products that are sold in Chennai
SELECT DISTINCT(product_code) 
FROM sales.transactions t
WHERE market_code = "Mark001"
;

-- See the transactions from 2020 in Chennai only
SELECT *
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
WHERE year = 2020 AND market_code = "Mark001"
;

-- Total amount sold in Chennai on 2020
SELECT SUM(t.sales_amount)
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
WHERE year = 2020 AND market_code = "Mark001"
;


