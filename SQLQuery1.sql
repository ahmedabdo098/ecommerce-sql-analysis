SELECT DISTINCT *
FROM ecommerce_dataset_updated;


UPDATE ecommerce_dataset_updated
SET Category = TRIM(Category),
    Payment_Method = TRIM(Payment_Method);


	SELECT *
FROM ecommerce_dataset_updated
WHERE Discount > 100;


	SELECT *
FROM ecommerce_dataset_updated;


SELECT SUM(Final_Price_Rs) AS total_sales
FROM ecommerce_dataset_updated;


SELECT COUNT(*) AS total_orders
FROM ecommerce_dataset_updated;

-- Top Categories
SELECT Category, SUM(Final_Price_Rs) AS total_sales
FROM ecommerce_dataset_updated
GROUP BY Category
ORDER BY total_sales DESC;


-- Payment Methods
SELECT Payment_Method, COUNT(*) AS total_orders
FROM ecommerce_dataset_updated
GROUP BY Payment_Method
ORDER BY total_orders DESC;


-- Sales Over Time
SELECT Purchase_Date, SUM(Final_Price_Rs) AS total_sales
FROM ecommerce_dataset_updated
GROUP BY Purchase_Date
