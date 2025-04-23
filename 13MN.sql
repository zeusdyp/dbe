-- Create Products table
CREATE TABLE Products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    category VARCHAR2(50),
    unit_price NUMBER(10, 2)
);

-- Insert sample data into Products table
INSERT INTO Products VALUES (101, 'Laptop', 'Electronics', 500.00);
INSERT INTO Products VALUES (102, 'Smartphone', 'Electronics', 300.00);
INSERT INTO Products VALUES (103, 'Headphones', 'Electronics', 30.00);
INSERT INTO Products VALUES (104, 'Keyboard', 'Electronics', 20.00);
INSERT INTO Products VALUES (105, 'Mouse', 'Electronics', 15.00);

-- Create Sales table
CREATE TABLE Sales (
    sale_id NUMBER PRIMARY KEY,
    product_id NUMBER,
    quantity NUMBER,
    total_price NUMBER(10, 2),
    sale_date DATE,
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert sample data into Sales table
INSERT INTO Sales VALUES (1, 101, 2, 1000.00, TO_DATE('2024-01-03', 'YYYY-MM-DD'));
INSERT INTO Sales VALUES (2, 102, 1, 300.00, TO_DATE('2024-01-03', 'YYYY-MM-DD'));
INSERT INTO Sales VALUES (3, 103, 3, 90.00, TO_DATE('2024-01-02', 'YYYY-MM-DD'));
INSERT INTO Sales VALUES (4, 104, 2, 40.00, TO_DATE('2024-01-01', 'YYYY-MM-DD'));
INSERT INTO Sales VALUES (5, 105, 1, 15.00, TO_DATE('2024-01-03', 'YYYY-MM-DD'));

-- 1. Retrieve the product_name and unit_price from the Products table
SELECT product_name, unit_price 
FROM Products;

-- 2. Filter the Products table to show only products in the 'Electronics' category
SELECT * 
FROM Products 
WHERE category = 'Electronics';

-- 3. Retrieve the sale_id and total_price from the Sales table for sales made on January 3, 2024
SELECT sale_id, total_price 
FROM Sales 
WHERE sale_date = TO_DATE('2024-01-03', 'YYYY-MM-DD');

-- 4. Calculate the total revenue generated from all sales in the Sales table
SELECT SUM(total_price) AS total_revenue 
FROM Sales;

-- 5. Count Sales Per Day from the Sales table
SELECT sale_date, COUNT(*) AS sales_count 
FROM Sales 
GROUP BY sale_date;

-- 6. Retrieve product_name and unit_price from the Products table with the Highest Unit Price
SELECT product_name, unit_price 
FROM Products 
WHERE unit_price = (SELECT MAX(unit_price) FROM Products);

-- 7. Retrieve the product_name and unit_price from the Products table, ordering the results by unit_price in descending order
SELECT product_name, unit_price 
FROM Products 
ORDER BY unit_price DESC;
