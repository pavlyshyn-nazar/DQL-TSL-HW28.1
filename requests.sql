CREATE TABLE IF NOT EXISTS sales(
id INTEGER NOT NULL AUTO_INCREMENT,
product VARCHAR(128),
price DECIMAL(10,2),
quantity INTEGER,
PRIMARY KEY (id)
);

INSERT INTO sales (product, price, quantity) 
VALUES ('Laptop', 1800.00, 5),
( 'Phone', 700.00, 3),
( 'Tablet', 500.00, 2),
('Printer', 300.00, 4);

SELECT * FROM sales;

SELECT * FROM sales LIMIT 2;

SELECT SUM(price * quantity) AS total_cost FROM sales;

SELECT product, SUM(quantity) AS total_quantity, AVG(price) AS average_price
FROM sales
GROUP BY product;