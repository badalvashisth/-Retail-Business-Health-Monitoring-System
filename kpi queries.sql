-- =====================================
-- TOTAL REVENUE
-- =====================================

SELECT ROUND(SUM(Revenue),2) AS Total_Revenue
FROM `clean retail data.csv`;

-- =====================================
-- TOTAL ORDERS
-- =====================================

SELECT COUNT(DISTINCT Invoice) AS Total_Orders
FROM `clean retail data.csv`;

-- =====================================
-- TOTAL PRODUCTS SOLD
-- =====================================

SELECT SUM(Quantity) AS Total_Quantity
FROM `clean retail data.csv`;

-- =====================================
-- AVERAGE PRODUCT PRICE
-- =====================================

SELECT ROUND(AVG(Price),2) AS Avg_Price
FROM `clean retail data.csv`;

-- =====================================
-- AVERAGE ORDER VALUE
-- =====================================

SELECT ROUND(
SUM(Revenue)/COUNT(DISTINCT Invoice),2
) AS Avg_Order_Value
FROM `clean retail data.csv`;