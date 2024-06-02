CREATE DATABASE supplychain;
USE supplychain;

-- Create Suppliers table
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(255),
    contact_person VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(255)
);
CREATE TABLE Products (
    product_id INT PRIMARY KEY, 
    product_name VARCHAR(255), 
    description TEXT, 
    unit_price DECIMAL(10,2), 
    quantity_in_stock INT
);  
CREATE TABLE Orders (
   order_id VARCHAR(10) PRIMARY KEY,
   product_id INT,
   supplier_id INT,
   order_date DATE,
   quantity_ordered INT,
   order_status VARCHAR(20),
   FOREIGN KEY (product_id) REFERENCES Products(product_id),
   FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
); 
CREATE TABLE Shipments (
    shipment_id VARCHAR(10) PRIMARY KEY,
    order_id VARCHAR(10),
    shipment_date DATE,
    delivery_date DATE,
    shipping_company VARCHAR(50),
    tracking_number VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(1, 'Supplier A', 'John Smith', '123-456-7890', 'john@example.com'),
(2, 'Supplier B', 'Alice Johnson', '987-654-3210', 'alice@example.com'),
(3, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com'),
(4, 'Supplier D', 'Sarah Lee', '789-123-4560', 'sarah@example.com'),
(5, 'Supplier E', 'Michael Green', '321-654-0987', 'michael@example.com'),
(6, 'Supplier F', 'Emily White', '654-098-3210', 'emily@example.com'),
(7, 'Supplier G', 'David Black', '987-321-6540', 'david@example.com'),
(8, 'Supplier H', 'Jessica Brown', '456-098-1237', 'jessica@example.com'),
(9, 'Supplier I', 'Daniel Smith', '012-345-6789', 'daniel@example.com'),
(10, 'Supplier J', 'Lisa Johnson', '789-456-1230', 'lisa@example.com'),
(11, 'Supplier K', 'Ryan Green', '234-567-8901', 'ryan@example.com'),
(12, 'Supplier L', 'Samantha White', '567-890-1234', 'samantha@example.com'),
(13, 'Supplier M', 'Chris Brown', '890-123-4567', 'chris@example.com'),
(14, 'Supplier N', 'Amanda Black', '123-456-7890', 'amanda@example.com'),
(15, 'Supplier O', 'Kevin Green', '345-678-9012', 'kevin@example.com'),
(16, 'Supplier P', 'Jennifer White', '678-901-2345', 'jennifer@example.com'),
(17, 'Supplier Q', 'Eric Brown', '901-234-5678', 'eric@example.com'),
(18, 'Supplier R', 'Michelle Black', '234-567-8901', 'michelle@example.com'),
(19, 'Supplier S', 'Brian Green', '456-789-0123', 'brian@example.com'),
(20, 'Supplier T', 'Ashley White', '789-012-3456', 'ashley@example.com');

INSERT INTO Products (product_id, product_name, description, unit_price, quantity_in_stock) VALUES
(101, 'Widget X', 'Widget X description', 10.99, 100),
(102, 'Widget Y', 'Widget Y description', 15.99, 150),
(103, 'Widget Z', 'Widget Z description', 20.99, 200),
(104, 'Widget A', 'Widget A description', 8.99, 80),
(105, 'Widget B', 'Widget B description', 12.99, 120),
(106, 'Widget C', 'Widget C description', 18.99, 180),
(107, 'Widget D', 'Widget D description', 9.99, 90),
(108, 'Widget E', 'Widget E description', 14.99, 140),
(109, 'Widget F', 'Widget F description', 22.99, 220),
(110, 'Widget G', 'Widget G description', 11.99, 110),
(111, 'Widget H', 'Widget H description', 16.99, 160),
(112, 'Widget I', 'Widget I description', 21.99, 210),
(113, 'Widget J', 'Widget J description', 7.99, 70),
(114, 'Widget K', 'Widget K description', 13.99, 130),
(115, 'Widget L', 'Widget L description', 19.99, 190),
(116, 'Widget M', 'Widget M description', 10.49, 105),
(117, 'Widget N', 'Widget N description', 15.49, 155),
(118, 'Widget O', 'Widget O description', 23.49, 235),
(119, 'Widget P', 'Widget P description', 12.49, 124),
(120, 'Widget Q', 'Widget Q description', 17.49, 174);

-- ALTER TABLE Products
-- DROP COLUMN decription;

-- ALTER TABLE Products ADD  description TEXT ;
-- SET foreign_key_checks = 0;
INSERT INTO Orders (order_id, product_id, supplier_id, order_date, quantity_ordered, order_status) VALUES
('ORD-0001', 101, 1, '2023-11-02', 25, 'Completed'),
('ORD-0002', 102, 2, '2023-10-25', 30, 'In Progress'),
('ORD-0003', 103, 3, '2023-10-30', 20, 'Completed'),
('ORD-0004', 104, 4, '2023-11-05', 35, 'In Progress'),
('ORD-0005', 105, 5, '2023-11-08', 40, 'Completed'),
('ORD-0006', 106, 6, '2023-11-10', 45, 'In Progress'),
('ORD-0007', 107, 7, '2023-11-12', 50, 'Completed'),
('ORD-0008', 108, 8, '2023-11-15', 55, 'In Progress'),
('ORD-0009', 109, 9, '2023-11-18', 60, 'Completed'),
('ORD-0010', 110, 10, '2023-11-20', 65, 'In Progress'),
('ORD-0011', 111, 11, '2023-11-22', 70, 'Completed'),
('ORD-0012', 112, 12, '2023-11-25', 75, 'In Progress'),
('ORD-0013', 113, 13, '2023-11-28', 80, 'Completed'),
('ORD-0014', 114, 14, '2023-12-01', 85, 'In Progress'),
('ORD-0015', 115, 15, '2023-12-04', 90, 'Completed'),
('ORD-0016', 116, 16, '2023-12-07', 95, 'In Progress'),
('ORD-0017', 117, 17, '2023-12-10', 100, 'Completed'),
('ORD-0018', 118, 18, '2023-12-13', 105, 'In Progress'),
('ORD-0019', 119, 19, '2023-12-16', 110, 'Completed'),
('ORD-0020', 120, 20, '2023-12-19', 115, 'In Progress');
  
INSERT INTO Shipments (shipment_id, order_id, shipment_date, delivery_date, shipping_company, tracking_number) VALUES
('SH-0001', 'ORD-0001', '2023-11-03', '2023-11-05', 'UPS', 'UPS123456'),
('SH-0002', 'ORD-0002', '2023-10-28', '2023-10-30', 'FedEx', 'FDX789012'),
('SH-0003', 'ORD-0003', '2023-11-01', '2023-11-03', 'DHL', 'DHL456789'),
('SH-0004', 'ORD-0004', '2023-11-06', '2023-11-08', 'UPS', 'UPS987654'),
('SH-0005', 'ORD-0005', '2023-11-09', '2023-11-12', 'FedEx', 'FDX654321'),
('SH-0006', 'ORD-0006', '2023-11-11', '2023-11-14', 'DHL', 'DHL987654'),
('SH-0007', 'ORD-0007', '2023-11-13', '2023-11-16', 'UPS', 'UPS456789'),
('SH-0008', 'ORD-0008', '2023-11-16', '2023-11-19', 'FedEx', 'FDX123456'),
('SH-0009', 'ORD-0009', '2023-11-19', '2023-11-22', 'DHL', 'DHL789012'),
('SH-0010', 'ORD-0010', '2023-11-21', '2023-11-24', 'UPS', 'UPS987123'),
('SH-0011', 'ORD-0011', '2023-11-23', '2023-11-26', 'FedEx', 'FDX456789'),
('SH-0012', 'ORD-0012', '2023-11-26', '2023-11-29', 'DHL', 'DHL654321'),
('SH-0013', 'ORD-0013', '2023-11-29', '2023-12-02', 'UPS', 'UPS789456'),
('SH-0014', 'ORD-0014', '2023-12-02', '2023-12-05', 'FedEx', 'FDX987654'),
('SH-0015', 'ORD-0015', '2023-12-05', '2023-12-08', 'DHL', 'DHL321098'),
('SH-0016', 'ORD-0016', '2023-12-08', '2023-12-11', 'UPS', 'UPS654987'),
('SH-0017', 'ORD-0017', '2023-12-11', '2023-12-14', 'FedEx', 'FDX321654'),
('SH-0018', 'ORD-0018', '2023-12-14', '2023-12-17', 'DHL', 'DHL987321'),
('SH-0019', 'ORD-0019', '2023-12-17', '2023-12-20', 'UPS', 'UPS654321'),
('SH-0020', 'ORD-0020', '2023-12-20', '2023-12-23', 'FedEx', 'FDX987654');

SET foreign_key_checks = 1;
 SELECT * FROM Suppliers; 
 
SELECT product_name, unit_price FROM Products;
SELECT order_id, order_date FROM Orders;
SELECT shipment_id, shipment_date FROM Shipments;

-- Count the total number of products in stock:
SELECT SUM(quantity_in_stock) FROM Products; 

-- Calculate the average unit price of products:
SELECT AVG(unit_price) AS average_price FROM Products;

-- Find the maximum quantity ordered:
SELECT MAX(quantity_ordered) AS maximum_orders FROM Orders;

-- List suppliers along with their contact persons:
SELECT supplier_name,contact_person FROM suppliers;

-- List products with their descriptions:
SELECT product_name , description FROM products; 

-- Display shipment details including the tracking number:
SELECT shipment_id,shipment_date,shipping_company, tracking_number	FROM  shipments;

-- List orders along with the associated supplier information:
SELECT o.order_id,o.order_date,s.supplier_name FROM orders o
JOIN Suppliers s ON o.supplier_id= s.supplier_id;

-- Display products that have a unit price greater than $15:
SELECT * FROM products WHERE unit_price > 15.00;

-- Count the number of orders per supplier:
SELECT supplier_id, COUNT(order_id) AS order_count FROM Orders
GROUP BY supplier_id;

-- Calculate the total quantity ordered for each product:
SELECT product_id, SUM(quantity_ordered) AS total_orders FROM orders 
GROUP BY product_id;


-- List shipments along with the associated order information:
SELECT s.*, o.order_id, o.order_date FROM shipments s 
JOIN orders o ON s.order_id=o.order_id;

-- Find suppliers with more than 2 contacts:
SELECT supplier_id, COUNT(contact_person) as contact_count FROM suppliers
GROUP BY supplier_id
HAVING COUNT(contact_person)>2; 

SELECT * FROM Suppliers;

-- As we are getting zero data so insert some data
INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(21, 'Supplier A', 'John Smith', '123-456-7890', 'john@example.com'),
(22, 'Supplier A', 'Jane Doe', '456-789-0123', 'jane@example.com'),
(23, 'Supplier A', 'Michael Johnson', '789-123-4560', 'michael@example.com'),
(24, 'Supplier B', 'Alice Johnson', '987-654-3210', 'alice@example.com'),
(25, 'Supplier B', 'Bob Brown', '654-321-0987', 'bob@example.com'),
(26, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com');

INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(27, 'Supplier A', 'Jane Doe', '456-789-0123', 'jane@example.com'),
(28, 'Supplier A', 'Michael Johnson', '789-123-4560', 'michael@example.com'),
(29, 'Supplier B', 'Bob Brown', '654-321-0987', 'bob@example.com'),
(30, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com');
INSERT INTO Suppliers (supplier_id, supplier_name, contact_person, phone_number, email) VALUES
(31, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com'),
(32, 'Supplier C', 'Mark Brown', '456-789-0123', 'mark@example.com');

-- Calculate the average quantity ordered per order:
SELECT AVG(quantity_ordered) as avg_quantity_ordered FROM orders;


-- List products along with the total number of orders they are associated with:
 SELECT product_id, COUNT(quantity_ordered)
 FROM Orders 
 GROUP BY product_id;
SELECT p.product_id, p.product_name, COUNT(o.order_id) AS order_count 
FROM Products p
LEFT JOIN Orders o ON p.product_id = o.product_id 
GROUP BY p.product_id;

-- Display orders that are in progress (order_status = 'In Progress'):
SELECT * FROM Orders WHERE order_status= 'In Progress'; 

--  Find the earliest and latest order dates:
SELECT MIN(order_date)AS earliest_order_date,MAX(order_date) AS latest_order_date FROM Orders;


-- Calculate the total revenue generated from orders:
SELECT SUM(o.quantity_ordered * p.unit_price) as total_revenue 
FROM Orders o 
JOIN Products p on o.product_id= p.product_id;


-- List suppliers along with the total quantity ordered from them:

SELECT s.supplier_id, s.supplier_name, SUM(o.quantity_ordered) AS total_quantity_ordered 
FROM Suppliers s
JOIN Orders o ON s.supplier_id = o.supplier_id 
GROUP BY s.supplier_id
ORDER BY total_quantity_ordered DESC;


-- 18. Find products with the highest unit price:
SELECT * FROM PRODUCTS WHERE unit_price=(SELECT MAX(unit_price) FROM Products); 


-- List orders along with the associated supplier and product information:

SELECT o.order_id ,o.order_date, s.supplier_name, p.* FROM Orders o
JOIN Suppliers s ON o.supplier_id = s.supplier_id
JOIN Products p ON o.order_id = p.order_id;
SELECT o.order_id, o.order_date, s.supplier_name, p.*
FROM Orders o
JOIN Suppliers s ON o.supplier_id = s.supplier_id
JOIN Products p ON o.product_id = p.product_id;

-- Display the top 3 products with the highest quantity ordered:

SELECT product_id, quantity_ordered 
FROM Orders 
ORDER BY quantity_ordered DESC 
LIMIT 3;

SELECT * FROM Orders;

-- Find the percentage of completed orders out of total orders:

SELECT (COUNT(CASE WHEN order_status= 'Completed' THEN 1 END)/ COUNT(order_status))*100 AS complettion_rate FROM Orders; 

-- Calculate the total number of shipments per shipping company:
SELECT shipping_company, COUNT(shipment_id) FROM shipments
GROUP BY shipping_company;


-- List suppliers who have not yet made any orders:
SELECT s.* FROM Suppliers s 
LEFT JOIN Orders o ON s.supplier_id = o.supplier_id
WHERE o.supplier_id IS NULL;


-- Display orders along with the corresponding shipment details, if available:
SELECT o.order_id , order_date , s.* FROM orders o
LEFT JOIN shipments s ON o.order_id = s.order_id;

-- Find the top 5 suppliers with the highest total quantity ordered:
SELECT s.supplier_id, s.supplier_name, SUM(o.quantity_ordered) AS total_quantity_ordered 
FROM Suppliers s
JOIN Orders o ON s.supplier_id = o.supplier_id 
GROUP BY s.supplier_id 
ORDER BY total_quantity_ordered DESC 
LIMIT 5;

-- 26. Find the total revenue generated by each supplier:
 SELECT SUM(p.unit_price * o.quantity_ordered) AS total_revenue
FROM Suppliers s
JOIN Orders o ON s.supplier_id = o.supplier_id
JOIN Products p ON o.product_id = p.product_id
GROUP BY s.supplier_id, s.supplier_name; 

-- Calculate the average delivery time for each shipping company:
SELECT shipping_company, AVG(DATEDIFF( delivery_date, shipment_date)) AS avg_delivery_time 
FROM shipments 
group by shipping_company;

-- Identify products that have never been ordered:
SELECT p.product_id, p.product_name FROM products p
LEFT JOIN orders o ON o.product_id = p.product_id
Where o.product_id IS NULL;


-- 30. Find the top 3 shipping companies with the most shipments:
SELECT shipping_company, COUNT(shipment_id) AS shipment_count  
FROM Shipments 
GROUP BY shipping_company
ORDER BY shipment_count DESC
LIMIT  3; 


-- 31. Calculate the percentage of orders that were completed for each supplier:
SELECT s.supplier_id, s.supplier_name,
       SUM(CASE WHEN o.order_status= 'Completed' THEN 1 ELSE 0 END)/ COUNT(*)*100
FROM Suppliers s 
JOIN Orders o ON o.supplier_id =s.supplier_id
GROUP BY s.supplier_id, s.supplier_name;


-- Identify products with low inventory levels (less than 50 in stock) that need restocking:
SELECT * FROM Products
WHERE quantity_in_stock < 50;

-- Find the top 5 suppliers with the highest total revenue:
SELECT s.supplier_id, s.supplier_name , SUM(p.unit_price * o.quantity_ordered) AS total_revenue
FROM Suppliers s
JOIN orders o ON  o.supplier_id = s.supplier_id
JOIN products p ON o.product_id =p.product_id
GROUP BY s.supplier_id, supplier_name
ORDER BY total_revenue DESC
LIMIT 5; 

-- Calculate the total number of orders made each month:
SELECT DATE_FORMAT(order_date, '%Y-%m') AS month, COUNT(*) AS total_orders
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m');

-- Identify suppliers with declining order trends over the past three months:
SELECT s.supplier_id, s.supplier_name
FROM Suppliers s
JOIN Orders o ON s.supplier_id = o.supplier_id
WHERE order_date >= DATE_SUB(CURRENT_DATE, INTERVAL 3 MONTH)
GROUP BY s.supplier_id, s.supplier_name
HAVING COUNT(DISTINCT DATE_FORMAT(order_date, '%Y-%m')) < 3;

-- Calculate the average shipment duration for each supplier:
SELECT s.supplier_id, supplier_name, AVG(DATEDIFF(o.order_date, z.shipment_date)) AS avg_shipment_duration
FROM Suppliers s 
JOIN orders o ON o.supplier_id = s.supplier_id
JOIN shipments z ON z.order_id= o.order_id
GROUP BY s.supplier_id, s.supplier_name;


-- Identify Seasonal Demand Patterns:

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity_ordered) AS total_quantity_ordered
FROM Orders
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

--  Product Popularity Trends:

SELECT p.product_id,p.product_name, COUNT(*) AS total_orders
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_orders DESC;

-- Correlation between Order Frequency, Product Categories, and Customer Demographics:

ALTER TABLE Products
ADD COLUMN category VARCHAR(255);

SELECT p.category,
    COUNT(*) AS total_orders,
    AVG(o.quantity_ordered) AS avg_quantity_ordered,
    AVG(DATEDIFF(sh.delivery_date, sh.shipment_date)) AS avg_shipment_duration
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
JOIN Shipments sh ON o.order_id = sh.order_id
GROUP BY p.category
ORDER BY total_orders DESC;

-- Forecast Future Demand
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity_ordered) AS total_quantity_ordered
FROM Orders
WHERE order_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 6 MONTH)
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

   
   
   
 

