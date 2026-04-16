create database havells;
use havells;

-- Total Revenue
SELECT SUM(Revenue) AS Total_Revenue FROM huge_sales;

-- Total Orders
SELECT COUNT(Order_ID) AS Total_Orders FROM huge_sales;

-- Revenue by Product
SELECT Product, SUM(Revenue) AS Total_Revenue FROM huge_sales GROUP BY Product ORDER BY Total_Revenue DESC;

-- Revenue by Region
SELECT Region, SUM(Revenue) AS Total_Revenue FROM huge_sales GROUP BY Region ORDER BY Total_Revenue DESC;

-- Payment Method Analysis
SELECT Payment_Method, COUNT(*) AS Total_Transactions FROM huge_sales GROUP BY Payment_Method ORDER BY Total_Transactions DESC;

-- Monthly Sales Trend
SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, SUM(Revenue) AS Monthly_Revenue FROM huge_sales GROUP BY DATE_FORMAT(Date, '%Y-%m') ORDER BY Month;