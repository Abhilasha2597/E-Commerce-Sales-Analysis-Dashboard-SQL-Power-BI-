Create table ecommerce_sales(

    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Description VARCHAR(255),
    Quantity INT,
    InvoiceDate TIMESTAMP,
    UnitPrice DECIMAL(10,2),
    CustomerID INT,
    Country VARCHAR(100)
);

 select * from ecommerce_sales;

SELECT *
FROM ecommerce_sales
WHERE CustomerID IS NULL;

DELETE FROM ecommerce_sales
WHERE CustomerID IS NULL;

SELECT *
FROM ecommerce_sales
WHERE Quantity < 0;

CREATE VIEW sales_with_revenue AS
SELECT 
    InvoiceNo,
    StockCode,
    Description,
    Quantity,
    UnitPrice,
    Quantity * UnitPrice AS Revenue,
    CustomerID,
    Country,
    InvoiceDate
FROM ecommerce_sales;

SELECT SUM(Revenue) AS total_revenue
FROM sales_with_revenue;

SELECT 
    Description,
    SUM(Quantity) AS total_quantity_sold
FROM ecommerce_sales
GROUP BY Description
ORDER BY total_quantity_sold DESC
LIMIT 10;

 //revenune by country //
 SELECT 
    Country,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM ecommerce_sales
GROUP BY Country
ORDER BY total_revenue DESC;

//monthly sales //

SELECT 
    DATE_TRUNC('month', InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS monthly_revenue
FROM ecommerce_sales
GROUP BY month
ORDER BY month;

SELECT 
    CustomerID,
    SUM(Quantity * UnitPrice) AS total_spent
FROM ecommerce_sales
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

//product demand vs price

SELECT 
    Description,
    AVG(UnitPrice) AS average_price,
    SUM(Quantity) AS total_demand
FROM ecommerce_sales
GROUP BY Description
ORDER BY total_demand DESC;

SELECT 
    StockCode,
    SUM(Quantity) AS total_sales
FROM ecommerce_sales
GROUP BY StockCode
ORDER BY total_sales DESC;

CREATE VIEW dashboard_data AS
SELECT 
    Country,
    Description,
    DATE_TRUNC('month', InvoiceDate) AS month,
    SUM(Quantity) AS total_quantity,
    SUM(Quantity * UnitPrice) AS revenue
FROM ecommerce_sales
GROUP BY Country, Description, DATE_TRUNC('month', InvoiceDate);
