-- Create employees table
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    position TEXT,
    department TEXT,
    salary NUMERIC
);

-- Insert dummy data into employees table
INSERT INTO employees (id, name, position, department, salary) VALUES
(1, 'John Doe', 'Manager', 'Sales', 75000),
(2, 'Jane Smith', 'Assistant Manager', 'Sales', 65000),
(3, 'Robert Brown', 'Salesperson', 'Sales', 50000),
(4, 'Emily Davis', 'HR Specialist', 'HR', 60000),
(5, 'Michael Wilson', 'Accountant', 'Finance', 70000);

-- Create sales table
CREATE TABLE sales (
    order_id INTEGER,
    customer_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    sale_date DATE
);

-- Insert dummy data into sales table
INSERT INTO sales (order_id, customer_id, product_id, quantity, sale_date) VALUES
(1, 1, 101, 2, '2023-01-15'),
(2, 2, 102, 1, '2023-02-10'),
(3, 1, 103, 5, '2023-03-05'),
(4, 3, 101, 3, '2023-04-12'),
(5, 4, 104, 1, '2023-05-20');

-- Create customers table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    city TEXT
);

-- Insert dummy data into customers table
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice Johnson', 'New York'),
(2, 'Bob Martin', 'Los Angeles'),
(3, 'Charlie Clark', 'Chicago'),
(4, 'Diana Turner', 'Houston'),
(5, 'Edward Harris', 'Phoenix');

-- Create orders table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    order_date DATE,
    customer_id INTEGER,
    total_amount NUMERIC
);

-- Insert dummy data into orders table
INSERT INTO orders (order_id, order_date, customer_id, total_amount) VALUES
(1, '2023-01-15', 1, 200.00),
(2, '2023-02-10', 2, 150.00),
(3, '2023-03-05', 1, 500.00),
(4, '2023-04-12', 3, 300.00),
(5, '2023-05-20', 4, 100.00);

-- Create inventories table
CREATE TABLE inventories (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    quantity INTEGER,
    price NUMERIC
);

-- Insert dummy data into inventories table
INSERT INTO inventories (product_id, product_name, quantity, price) VALUES
(101, 'Product A', 50, 100.00),
(102, 'Product B', 30, 150.00),
(103, 'Product C', 20, 50.00),
(104, 'Product D', 10, 200.00),
(105, 'Product E', 40, 75.00);
