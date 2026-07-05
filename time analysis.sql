-- Monthly Revenue

SELECT
Month,
Month_Name,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY Month,Month_Name
ORDER BY Month;

------------------------------------------------

-- Daily Revenue

SELECT
Date,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY Date
ORDER BY Date;

------------------------------------------------

-- Weekday Revenue

SELECT
Weekday,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY Weekday;

------------------------------------------------

-- Hourly Revenue

SELECT
HOUR(Time) Hour,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY Hour
ORDER BY Hour;

------------------------------------------------

-- Monthly Quantity

SELECT
Month_Name,
SUM(Quantity) Quantity
FROM `clean retail data.csv`
GROUP BY Month,Month_Name
ORDER BY Month;

------------------------------------------------

-- Highest Sales Day

SELECT
Date,
SUM(Revenue) Revenue
FROM `clean retail data.csv`
GROUP BY Date
ORDER BY Revenue DESC
LIMIT 10;