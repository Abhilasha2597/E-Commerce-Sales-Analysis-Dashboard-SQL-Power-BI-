SELECT MAX(InvoiceDate)
FROM ecommerce_sales;

SELECT
    CustomerID,
    MAX(InvoiceDate) AS last_purchase_date,
    DATE_PART('day',
    (SELECT MAX(InvoiceDate) FROM ecommerce_sales) 
        - MAX(InvoiceDate)
    ) AS recency,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    SUM(Quantity * UnitPrice) AS monetary
FROM ecommerce_sales
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID;


CREATE VIEW rfm_analysis AS
SELECT
    CustomerID,
    MAX(InvoiceDate) AS last_purchase_date,
    DATE_PART('day',
    (SELECT MAX(InvoiceDate) FROM ecommerce_sales) 
        - MAX(InvoiceDate)
    ) AS recency,
    COUNT(DISTINCT InvoiceNo) AS frequency,
    SUM(Quantity * UnitPrice) AS monetary
FROM ecommerce_sales
WHERE CustomerID IS NOT NULL
GROUP BY CustomerID;

SELECT *
FROM rfm_analysis
LIMIT 10;