CREATE DATABASE e_commerce;
USE  e_commerce;
-- 1. Customers - customer_id (INT, Primary Key) - name (VARCHAR) - email (VARCHAR) - city (VARCHAR) - registration_date (DATE)
CREATE TABLE customers(customer_id INT PRIMARY KEY, cust_name VARCHAR(30),email VARCHAR(30),city VARCHAR(20),registration_date DATE);
-- 2. Products - product_id (INT, Primary Key) - product_name (VARCHAR) - category (VARCHAR) - price (DECIMAL) - stock (INT)
CREATE TABLE products(product_id INT PRIMARY KEY,product_name VARCHAR(30),category VARCHAR(30),price DECIMAL(10,2),stock INT);
-- 3. Orders - order_id (INT, Primary Key) - customer_id (INT, Foreign Key to Customers) - product_id (INT, Foreign Key to Products) - quantity (INT) - order_date (DATE)- status (VARCHAR)
CREATE TABLE orders(order_id INT PRIMARY KEY,customer_id INT ,FOREIGN KEY (customer_id) REFERENCES customers(customer_id),product_id INT,FOREIGN KEY (product_id) REFERENCES products(product_id),quantity INT,order_date DATE,status VARCHAR(20));
-- 4. Add a new column 'status' to the Orders table.
-- added 
-- Change the datatype of the 'price' column in Products to support 3 decimal places.
ALTER TABLE products MODIFY COLUMN price DECIMAL(10,3);
-- Drop the 'registration_date' column from Customers.
ALTER TABLE customers DROP COLUMN registration_date;
--  Insert 5 sample records into each table.
INSERT INTO customers VALUES(101,'Mohini','mohini@gmail.com','Pune'),(102,'Omkar','om10@gmail.com','Mumbai'),(103,'Atharva','a@gmail.com','Bengluru'),(104,'Sia','s@gmail.com','Chennai'),(105,'Ruhi','ruhi@gmail.com','Kerala');
INSERT INTO products VALUES(1001,'Mobile','Electronic',25000,10),(1002,'Laptop','Electronics',50000,15),(1003,'Violin','Music',10000,5),(1004,'Ball','Sports',50,100),(1005,'Bed','Furniture',30000,20);
INSERT INTO orders VALUES(1,101,1001,1,'2021-10-1','Reached');
INSERT INTO orders VALUES(2,102,1002,2,'2025-1-10','On the way');
INSERT INTO orders VALUES(3,103,1003,1,'2025-08-11','Order done');
INSERT INTO orders VALUES(4,104,1004,8,'2024-10-21','Reached');
INSERT INTO orders VALUES(5,105,1005,5,'2023-6-8','Reached');
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
-- Update the stock of a specific product after a sale.
UPDATE products SET stock = stock - 5 WHERE product_id = product_id;
-- Delete a customer who hasn't placed any order.
SET SQL_SAFE_UPDATES =0;
DELETE FROM orders WHERE quantity=0;
select * from orders;
-- change the email of customer 'Atharva'
UPDATE customers SET email='atharva09@gmail.com' WHERE customer_id = 103;
-- increase the price of products in the 'furniture' catyegory by 15%
UPDATE products SET price = price*1.15 WHERE category='Furniture';
START TRANSACTION;
ROLLBACK;
-- grant select and update privileges on the products table to a user called 'product_manager'
CREATE USER product_manager;
GRANT SELECT,UPDATE ON e_commerce.products TO product_manager;
-- revoke delete prvilege from 'product_manager'
REVOKE DELETE ON e_commerce.products FROM product_manager;
-- grant all privileges on orders table to 'admin_user'
CREATE USER admin_user;
GRANT SELECT,UPDATE,DELETE,INSERT,ALTER ON e_commerce.orders TO admin_user;
-- Use WHERE to list all products in the 'Electronics' category
UPDATE products SET stock = 10 WHERE category = 'Electronics';
UPDATE products SET price = 500 WHERE product_name = 'Mobile';
-- Find products with price BETWEEN 200 AND 800
SELECT * FROM products HAVING price BETWEEN 200 AND 800;
-- Show DISTINCT cities from which customers have placed 
SELECT DISTINCT city FROM customers;
-- List the top 5 customers based on order count using ORDER BY and LIMIT
SELECT customer_id,COUNT(quantity) as order_quantity FROM orders GROUP BY customer_id ORDER BY order_quantity ASC LIMIT 5;
-- Group orders by product_id and show the total quantity ordered per product.
SELECT product_id,SUM(quantity) as total_quantity FROM orders GROUP BY product_id;
-- Use GROUP BY and HAVING to find customers with more than 2 orders.
SELECT customer_id,COUNT(quantity) as cust_quantity FROM orders GROUP BY customer_id HAVING COUNT(quantity) > 2;
-- Use ORDER BY to list products by ascending stock value
SELECT product_name FROM products ORDER BY product_name ASC;
-- Display the most frequently ordered product using GROUP BY and ORDER BY.
SELECT product_id, SUM(quantity) as totalQuantity FROM orders GROUP BY product_id ORDER BY totalQuantity DESC LIMIT 1;
-- Find customers who registered BETWEEN '2023-01-01' AND '2023-12-31'.
SELECT * FROM orders WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';
-- Use LIMIT to display any 3 products from the Electronics category
SELECT * FROM products WHERE category = 'Electronics' LIMIT 3;
-- list all orders with customer names and product names
SELECT c.cust_name,p.product_name  FROM orders o JOIN customers c on o.customer_id = c.customer_id JOIN products p ON o.product_id = p.product_id;  
-- find customers who never placed order
SELECT c.cust_name FROM customers c JOIN  orders o ON  c.customer_id = o.customer_id WHERE  o.customer_id IS NULL;
-- display all products ordered along with the customer name who ordered them
select c.cust_name,p.product_name from orders o JOIN customers c on c.customer_id = o.customer_id join products p on p.product_id = o.product_id;
-- show customer names and total quantity of all products they ordered
select c.cust_name,SUM(quantity) as total_quantity from orders o join customers c on c.customer_id = o.customer_id GROUP BY c.cust_name;
-- list order details along with product price and total amount for each order
select o.order_id,c.cust_name,p.product_name,p.price,o.quantity,(p.price * o.quantity) as total_amount from orders o join customers c on o.customer_id = c.customer_id join products p on o.product_id = p.product_id;
-- show all customers and their orders,including customers with no orders
 select c.cust_name,o.order_id,p.product_name from customers c left join orders o on c.customer_id = o.customer_id left join products p on o.product_id = p.product_id;
 -- find the most expensive product ordered and the name of the customer who ordered it
 select c.cust_name,p.product_name,p.price from orders o join customers c on o.customer_id = c.customer_id join products p on o.product_id = p.product_id order by p.price desc limit 1;
 -- show each customers name and the number of unique products they have ordered
 select c.cust_name,count(distinct o.product_id) as unique_products from orders o join customers c on o.customer_id = c.customer_id group by c.cust_name;
 -- list the names of customers who have ordered products from more than one category
 select c.cust_name from customers c join orders o on c.customer_id = o.customer_id join products p on o.product_id = p.product_id group by c.cust_name having count(distinct p.category) > 1;
 -- display total revenue generated per customer along with their names
 alter table orders add column total_amount INT;
 update orders set total_amount = 500 where order_id=1;
 update orders set total_amount = 100000 where order_id=2;
 update orders set total_amount = 10000 where order_id=3;
 update orders set total_amount = 400 where order_id=4;
 update orders set total_amount = 172500 where order_id=5;
select c.cust_name,sum(o.total_amount) as total_revenue from customers c join orders o on c.customer_id = o.customer_id group by c.cust_name;
-- list all customers and the details of their orders using LEFT JOIN
select c.cust_name ,p.product_name from customers c left join orders o on c.customer_id = o.customer_id left join products p on o.product_id = p.product_id;
-- list all orders including those that have products not listed in the products table using right join
select p.product_name,c.cust_name from orders o join customers c on o.customer_id = c.customer_id right join products p on o.product_id = p.product_id;
-- display all customer names and product names using full outer join 
select c.cust_name,p.product_name from customers c left join products p on 1 = 1 union  select c.cust_name,p.product_name from products p left join customers c on 1 = 1 where c.cust_name IS NULL;
-- generate a list of all possible customers-products combinations using CROSS JOIN
select c.cust_name,p.product_name from customers c cross join products p;