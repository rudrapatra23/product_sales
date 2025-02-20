CREATE DATABASE ProductPerformance;
USE ProductPerformance;

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(255) NOT NULL,
    category VARCHAR(255),
    price DECIMAL(10, 2),
    launch_date DATE
);

-- Insert data into Products table
INSERT INTO Products (product_name, category, price, launch_date) VALUES
('Samsung Galaxy S23', 'Electronics', 19999, '2023-01-01'),
('Nike Air Max 270', 'Clothing', 4999, '2022-06-15'),
('Apple MacBook Pro', 'Electronics', 29999, '2023-03-10'),
('Breville Barista Express', 'Kitchen Appliances', 8999, '2022-12-01'),
('Ikea Hemnes Dresser', 'Furniture', 49999, '2022-10-20'),
('Sony PlayStation 5', 'Electronics', 79999, '2023-02-05'),
('Adidas UltraBoost', 'Clothing', 2999, '2022-07-10'),
('L’Oréal Paris Revitalift', 'Beauty', 3999, '2023-01-12'),
('Wayfair Modern Sofa', 'Home Decor', 7999, '2022-11-25'),
('JBL Flip 5 Bluetooth Speaker', 'Electronics', 15999, '2023-02-20'),
('West Elm Mid-Century Desk', 'Furniture', 24999, '2023-03-01'),
('KitchenAid Stand Mixer', 'Kitchen Appliances', 5999, '2022-09-15'),
('LEGO Star Wars Set', 'Toys', 1999, '2022-08-05'),
('Bose QuietComfort 45', 'Electronics', 39999, '2023-01-25'),
('Wilson Pro Staff Tennis Racket', 'Sports', 8999, '2023-02-10'),
('Ashley Furniture Queen Bed', 'Furniture', 19999, '2023-01-10'),
('Maybelline Fit Me Foundation', 'Beauty', 2499, '2022-06-05'),
('Levi’s 501 Original Jeans', 'Clothing', 9999, '2023-02-02'),
('Barbie Dreamhouse', 'Toys', 3999, '2022-10-10'),
('Nike Vapor Max', 'Sports', 5999, '2023-01-15');

-- Create Sales table
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    sale_date DATE,
    quantity INT,
    total_sale DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Insert data into Sales table
INSERT INTO Sales (product_id, quantity, sale_date, total_sale) VALUES
(1, 120, '2023-01-15', 2399880),
(2, 250, '2022-06-20', 1249750),
(3, 80, '2023-03-12', 2399920),
(4, 150, '2022-12-05', 1349850),
(5, 60, '2022-10-25', 2999400),
(6, 90, '2023-02-10', 7199910),
(7, 200, '2022-07-15', 599800),
(8, 180, '2023-01-18', 719820),
(9, 110, '2022-11-27', 879890),
(10, 75, '2023-02-22', 1199925),
(11, 50, '2023-03-03', 1249950),
(12, 130, '2022-09-20', 779870),
(13, 300, '2022-08-10', 599700),
(14, 90, '2023-01-28', 359910),
(15, 70, '2023-02-12', 629930),
(16, 95, '2023-01-05', 379920),
(17, 160, '2023-01-15', 639840),
(18, 100, '2022-06-10', 399900),
(19, 120, '2023-02-02', 479880),
(20, 130, '2022-10-15', 1299870);

-- Create Inventory table
CREATE TABLE Inventory (
    product_id INT,
    stock_level INT,
    last_updated DATE,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Sample Inventory data (you can modify stock levels as per your needs)
INSERT INTO Inventory (product_id, stock_level, last_updated) VALUES
(1, 500, '2023-02-15'),
(2, 1000, '2023-02-10'),
(3, 200, '2023-03-01'),
(4, 300, '2022-12-01'),
(5, 150, '2022-10-10'),
(6, 200, '2023-02-05'),
(7, 1000, '2022-07-10'),
(8, 500, '2023-01-20'),
(9, 300, '2022-11-25'),
(10, 100, '2023-02-22'),
(11, 80, '2023-03-01'),
(12, 500, '2022-09-15'),
(13, 800, '2022-08-01'),
(14, 400, '2023-01-25'),
(15, 600, '2023-02-10'),
(16, 700, '2023-01-28'),
(17, 150, '2023-01-20'),
(18, 600, '2022-06-15'),
(19, 500, '2023-02-05'),
(20, 1000, '2022-10-10');

-- Create CustomerReviews table
CREATE TABLE CustomerReviews (
    review_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    customer_id INT,
    review_rating INT,  -- Rating out of 5
    review_date DATE,
    review_text TEXT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO CustomerReviews (product_id, customer_id, review_rating, review_date, review_text) VALUES
(1, 101, 4, '2023-02-05', 'Great product, but could be cheaper.'),
(2, 102, 5, '2023-02-07', 'Very comfortable and fits well!'),
(3, 103, 3, '2023-02-10', 'The quality is okay, but it stopped working after a few weeks.'),
(4, 104, 5, '2023-02-12', 'Works great in my kitchen!'),
(5, 105, 4, '2023-02-15', 'Elegant and comfortable furniture.'),
(6, 106, 5, '2023-02-17', 'Perfect for gaming, highly recommend!'),
(7, 107, 2, '2023-02-20', 'Doesn’t fit as expected.'),
(8, 108, 5, '2023-02-18', 'Great value for the price!'),
(9, 109, 4, '2023-02-12', 'Beautiful design, although a bit heavy.'),
(10, 110, 3, '2023-02-19', 'Average performance, could be improved.'),
(11, 111, 4, '2023-02-22', 'Very comfortable but not as sturdy as expected.'),
(12, 112, 5, '2023-02-05', 'My kids love this toy!'),
(13, 113, 4, '2023-02-07', 'Good value for money.'),
(14, 114, 5, '2023-02-10', 'Nice quality product!'),
(15, 115, 3, '2023-02-14', 'The material feels cheap.'),
(16, 116, 4, '2023-02-17', 'Affordable and reliable.'),
(17, 117, 2, '2023-02-02', 'Not worth the price.'),
(18, 118, 4, '2023-02-05', 'Decent product, does the job well.'),
(19, 119, 5, '2023-02-10', 'High-quality materials and great design.'),
(20, 120, 3, '2023-02-11', 'The material isn’t very durable.');

-- Total Sales per Product
SELECT p.product_name, SUM(s.total_sale) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name;

-- Number of Units Sold per Product
SELECT p.product_name, SUM(s.quantity) AS total_units_sold
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name;

--  Inventory Status of Products
SELECT p.product_name, i.stock_level
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id;

-- sales per category
SELECT p.category, SUM(s.total_sale) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.category;

-- top performing 5 products
SELECT p.product_name, SUM(s.total_sale) AS total_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 5;

-- product with low inventory
SELECT p.product_name, i.stock_level
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
WHERE i.stock_level < 200;

-- products with high inventory top 5
SELECT p.product_name, i.stock_level
FROM Inventory i
JOIN Products p ON i.product_id = p.product_id
ORDER BY i.stock_level DESC LIMIT 5;

-- Product Performance Over Time (Monthly Sales)
SELECT p.product_name, 
       EXTRACT(MONTH FROM s.sale_date) AS sale_month, 
       SUM(s.total_sale) AS monthly_sales
FROM Sales s
JOIN Products p ON s.product_id = p.product_id
GROUP BY p.product_name, sale_month
ORDER BY sale_month;




