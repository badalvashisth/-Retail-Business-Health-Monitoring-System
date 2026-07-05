-- Revenue by Country

SELECT
Country,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY Country
ORDER BY Revenue DESC;

------------------------------------------------

-- Orders by Country

SELECT
Country,
COUNT(DISTINCT Invoice) Orders_Count
FROM `clean retail data.csv`
GROUP BY Country
ORDER BY Orders_Count DESC;

------------------------------------------------

-- Quantity Sold by Country

SELECT
Country,
SUM(Quantity) Quantity
FROM `clean retail data.csv`
GROUP BY Country
ORDER BY Quantity DESC;

------------------------------------------------

-- Average Revenue by Country

SELECT
Country,
ROUND(AVG(Revenue),2) Avg_Revenue
FROM `clean retail data.csv`
GROUP BY Country;

------------------------------------------------

-- Top 5 Countries

SELECT
Country,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY Country
ORDER BY Revenue DESC
LIMIT 5;

------------------------------------------------

-- Revenue Percentage

SELECT
Country,
SUM(Revenue) Revenue,
ROUND(
SUM(Revenue)*100/
(SELECT SUM(Revenue) FROM sales),2
) AS Revenue_Percentage
FROM `clean retail data.csv`
GROUP BY Country
ORDER BY Revenue DESC;