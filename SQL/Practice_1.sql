-- Create a database for your company named KamaleshLtd.

-- Step 1: create a table inside this DB to store employee info (id, name and salary).

-- Step 2: Add following information in the DB:

    -- 1. "Kamalesh", 25000
    -- 2. "Kisan", 30000
    -- 3. "Kiran", 40000

-- Step 3: Select & view all your table data.

CREATE DATABASE kamalesh;
USE kamalesh;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(100),
salary INT
);

INSERT INTO employee
(id, name, salary)
VALUES
(1, "Kamalesh", 25000),
(2, "Kisan", 30000),
(3, "Kiran", 40000);


SELECT * FROM employee;