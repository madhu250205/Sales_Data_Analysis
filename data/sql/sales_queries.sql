-- ============================================================
-- Sales Data Analysis — SQL Queries
-- Dataset: cleaned_sales_data.csv (11,231 rows after cleaning)
-- Table: sales
-- ============================================================

-- 1. Total revenue overall
SELECT SUM(Amount) AS Total_Revenue FROM sales;

-- 2. Total revenue by Gender
SELECT Gender, SUM(Amount) AS Total_Revenue, COUNT(*) AS Total_Orders
FROM sales
GROUP BY Gender
ORDER BY Total_Revenue DESC;

-- 3. Total revenue by Age Group
SELECT "Age Group", SUM(Amount) AS Total_Revenue, COUNT(*) AS Total_Orders
FROM sales
GROUP BY "Age Group"
ORDER BY Total_Revenue DESC;

-- 4. Top 5 states by revenue
SELECT State, SUM(Amount) AS Total_Revenue
FROM sales
GROUP BY State
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 5. Revenue by Occupation
SELECT Occupation, SUM(Amount) AS Total_Revenue, COUNT(*) AS Total_Orders
FROM sales
GROUP BY Occupation
ORDER BY Total_Revenue DESC;

-- 6. Revenue by Product Category
SELECT Product_Category, SUM(Amount) AS Total_Revenue, COUNT(*) AS Total_Orders
FROM sales
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

-- 7. Revenue by Marital Status
SELECT Marital_Status, SUM(Amount) AS Total_Revenue, AVG(Amount) AS Avg_Order_Value
FROM sales
GROUP BY Marital_Status;

-- 8. Top 10 highest-spending customers
SELECT Cust_name, SUM(Amount) AS Total_Spent, COUNT(*) AS Orders_Count
FROM sales
GROUP BY Cust_name
ORDER BY Total_Spent DESC
LIMIT 10;

-- 9. Average order value by Zone
SELECT Zone, AVG(Amount) AS Avg_Order_Value, SUM(Amount) AS Total_Revenue
FROM sales
GROUP BY Zone
ORDER BY Total_Revenue DESC;

-- 10. Revenue by Gender + Marital Status (cross-segment)
SELECT Gender, Marital_Status, SUM(Amount) AS Total_Revenue, COUNT(*) AS Order_Count
FROM sales
GROUP BY Gender, Marital_Status
ORDER BY Total_Revenue DESC;
