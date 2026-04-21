---1. Sales Trend (Month-wise)
SELECT 
    TO_CHAR("Order Date", 'Mon') AS month,
    SUM("Sales") AS total_sales
FROM customer
GROUP BY month
ORDER BY MIN("Order Date");

---2. Category-wise Sales
SELECT 
    "Category",
    SUM("Sales") AS total_sales
FROM customer
GROUP BY "Category"
ORDER BY total_sales DESC;

---3. Region-wise Performance
SELECT 
    "Region",
    SUM("Sales") AS total_sales
FROM customer
GROUP BY "Region"
ORDER BY total_sales DESC;

---4. Top 10 Products
SELECT 
    "Product Name",
    SUM("Sales") AS total_sales
FROM customer
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 10;

---Sales by Customer Segment
SELECT 
    "Segment",
    SUM("Sales") AS total_sales
FROM customer
GROUP BY "Segment"
ORDER BY total_sales DESC;

---6. City-wise Top Sales
SELECT 
    "City",
    SUM("Sales") AS total_sales
FROM customer
GROUP BY "City"
ORDER BY total_sales DESC
LIMIT 10;

---7. Sub-Category Performance
SELECT 
    "Sub-Category",
    SUM("Sales") AS total_sales
FROM customer
GROUP BY "Sub-Category"
ORDER BY total_sales DESC;

---8. Year-wise Sales Trend
SELECT 
    EXTRACT(YEAR FROM "Order Date") AS year,
    SUM("Sales") AS total_sales
FROM customer
GROUP BY year
ORDER BY year;
