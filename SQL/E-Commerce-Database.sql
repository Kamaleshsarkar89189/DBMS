
CREATE DATABASE ecommerce

USE ecommerce;


CREATE TABLE users(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Product Table
CREATE TABLE products(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
);

-- Order Table
CREATE TABLE order(
    id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (product_id) REFERENCES products(id),
);

-- Insert Users
INSERT INTO users (name, email) VALUES
('Alice', 'alice@email.com'),
('Bob', 'bob@email.com'),
('Charlie', 'charlie@email.com');

-- Insert Products
INSERT INTO products (name, price, stock) VALUES
('Phone', 500.00, 10),
('Laptop', 1000.00, 5),
('Headphones', 100.00, 25);

-- Insert Orders
INSERT INTO orders (user_id, product_id, quantity) VALUES
(1, 1, 1),
(2, 3, 2),
(1, 2, 1);

-- See orders with user and product details
SELECT 
  o.id AS order_id,
  u.name AS customer,
  p.name AS product,
  o.quantity,
  o.order_date
FROM orders o
JOIN users u ON o.user_id = u.id
JOIN products p ON o.product_id = p.id;
