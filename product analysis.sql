-- Top Revenue Products

SELECT
StockCode,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY StockCode
ORDER BY Revenue DESC
LIMIT 10;

------------------------------------------------

-- Lowest Revenue Products

SELECT
StockCode,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY StockCode
ORDER BY Revenue
LIMIT 10;

------------------------------------------------

-- Most Sold Products

SELECT
StockCode,
SUM(Quantity) Quantity
FROM `clean retail data.csv`
GROUP BY StockCode
ORDER BY Quantity DESC
LIMIT 10;

------------------------------------------------

-- Least Sold Products

SELECT
StockCode,
SUM(Quantity) Quantity
FROM `clean retail data.csv`
GROUP BY StockCode
ORDER BY Quantity
LIMIT 10;

------------------------------------------------

-- Average Revenue Per Product

SELECT
StockCode,
ROUND(AVG(Revenue),2) Avg_Revenue
FROM `clean retail data.csv`
GROUP BY StockCode
ORDER BY Avg_Revenue DESC;

------------------------------------------------

-- Average Price Per Product

SELECT
StockCode,
ROUND(AVG(Price),2) Avg_Price
FROM `clean retail data.csv`
GROUP BY StockCode;

------------------------------------------------

-- Number of Orders Per Product

SELECT
StockCode,
COUNT(DISTINCT Invoice) Orders_Count
FROM `clean retail data.csv`
GROUP BY StockCode
ORDER BY Orders_Count DESC;