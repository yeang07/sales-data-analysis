-- Sales Data Analysis Project
-- Beginner SQL queries for portfolio practice

-- 1. View all sales records
SELECT *
FROM sales_data;

-- 2. Calculate total sales
SELECT 
    SUM(TotalSales) AS total_sales
FROM sales_data;

-- 3. Sales by region
SELECT 
    Region,
    SUM(TotalSales) AS total_sales
FROM sales_data
GROUP BY Region
ORDER BY total_sales DESC;

-- 4. Sales by product
SELECT 
    Product,
    SUM(TotalSales) AS total_sales
FROM sales_data
GROUP BY Product
ORDER BY total_sales DESC;

-- 5. Sales by category
SELECT 
    Category,
    SUM(TotalSales) AS total_sales
FROM sales_data
GROUP BY Category
ORDER BY total_sales DESC;

-- 6. Monthly sales
SELECT 
    strftime('%Y-%m', OrderDate) AS sales_month,
    SUM(TotalSales) AS total_sales
FROM sales_data
GROUP BY sales_month
ORDER BY sales_month;

-- 7. Best-selling products by quantity
SELECT 
    Product,
    SUM(Quantity) AS total_quantity_sold
FROM sales_data
GROUP BY Product
ORDER BY total_quantity_sold DESC;
