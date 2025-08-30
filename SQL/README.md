# SQL

# What is Database?
    Database is a collection of interrelated data.

# What is DBMS?
    DBMS (Database Management System) is software used to create, manage, and organize
    databases.

# What is RDBMS?
    ● RDBMS (Relational Database Management System) - is a DBMS based on the
    concept of tables (also called relations).
    ● Data is organized into tables (also known as relations) with rows (records) and columns (attributes).
    ● Eg - MySQL, PostgreSQL, Oracle etc.

# What is SQL?
    SQL is Structured Query Language - used to store, manipulate and retrieve data from RDBMS.
    (It is not a database, it is a language used to interact with database)

    We use SQL for CRUD Operations :
    ● CREATE - To create databases, tables, insert tuples in tables etc
    ● READ - To read data present in the database.
    ● UPDATE - Modify already inserted data.
    ● DELETE - Delete database, table or specific data point/tuple/row or multiple rows.
    *Note - SQL keywords are NOT case sensitive. Eg: select is the same as SELECT in SQL.

    SQL v/s MySQL
    SQL is a language used to perform CRUD operations in Relational DB, while MySQL is a RDBMS that uses SQL.

# SQL Data Types
    In SQL, data types define the kind of data that can be stored in a column or variable.

    To See all data types of MYSQL, visit :
    https://dev.mysql.com/doc/refman/8.0/en/data-types.html


# Here are the frequently used SQL data types:
    They define the type of values that can be stored in a column

-- DATATYPE     DESCRIPTION                                                USAGE
---------------------------------------------------------------------------------------------
CHAR          -- string(0-255), can store characters of fixed length      CHAR(50)
VARCHAR       -- string(0-255), can store characters up to given length   VARCHAR(50)
BLOB          -- string(0-65535), can store binary large object           BLOB(1000)

INT           -- integer(-2,147,483,648 to 2,147,483,647)                 INT
TINYINT       -- integer(-128 to 127)                                     TINYINT
BIGINT        -- integer(-9,223,372,036,854,775,808 to 
                 9,223,372,036,854,775,807)                               BIGINT

BIT           -- can store x-bit values. x can range from 1 to 64         BIT(2)
FLOAT         -- Decimal number - with precision to 23 digits             FLOAT
DOUBLE        -- Decimal number - with 24 to 53 digits                    DOUBLE
BOOLEAN       -- Boolean values 0 or 1                                    BOOLEAN

DATE          -- date in format of YYYY-MM-DD ranging from
                 1000-01-01 to 9999-12-31                                 DATE

TIME          -- HH:MM:SS                                                 TIME
YEAR          -- year in 4 digits format ranging from 1901 to 2155        YEAR


# *Note- 
    CHAR is for fixed length & VARCHAR is for variable length strings. Generally,
    VARCHAR is better as it only occupies necessary memory & works more efficiently.

    We can also use UNSIGNED with datatypes when we only have positive values to add.
    Eg - UNSIGNED INT

        TINYINT UNSIGNED (0 to 255)
        TINYINT (-128 to 127)

# Types of SQL Commands

    1. DQL (Data Query Language) : Used to retrieve data from databases. (SELECT)
    2. DDL (Data Definition Language) : Used to create, alter, and delete database objects
    like tables, indexes, etc. (CREATE, DROP, ALTER, RENAME, TRUNCATE)
    3. DML (Data Manipulation Language): Used to modify the database. (INSERT,UPDATE, DELETE)
    4. DCL (Data Control Language): Used to grant & revoke permissions. (GRANT, REVOKE)
    5. TCL (Transaction Control Language): Used to manage transactions. (COMMIT, ROLLBACK, START TRANSACTIONS, SAVEPOINT)

# Database related Queries

    create database users;
     
    create database if not exists users;
    ---------------------------------
    drop database users;

    drop database if exists users;

    show databases; (Show all database from our server )

    show tables;


# 1. Data Definition Language (DDL)

    Data Definition Language (DDL) is a subset of SQL (Structured Query Language)
    responsible for defining and managing the structure of databases and their objects.
    DDL commands enable you to create, modify, and delete database objects like tables,
    indexes, constraints, and more.


#   create table/CREATE TABLE:

    * Used to create a new table in the database.
    * Specifes the table name, column names, data types, constraints, and more.
    * Syntax:

    create table table_name(
        column_name1 datatype constraint,
        column_name2 datatype constraint,
    );

    Example:
    
    create table auth(
	username varchar(20) primary key,
    email varchar(50),
    password varchar(30)
);

#   ALTER TABLE:
    ○ Used to modify the structure of an existing table.
    ○ You can add, modify, or drop columns, constraints, and more.
    ○ Example: ALTER TABLE employees ADD COLUMN email VARCHAR(100);
    
#   DROP TABLE:
    ○ Used to delete an existing table along with its data and structure.
    ○ Example: DROP TABLE employees;

#   CREATE INDEX:
    ○ Used to create an index on one or more columns in a table.
    ○ Improves query performance by enabling faster data retrieval.
    ○ Example: CREATE INDEX idx_employee_name ON employees (name);

#   CREATE CONSTRAINT:
    ○ Used to define constraints that ensure data integrity.
    ○ Constraints include PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL,
    and CHECK.
    ○ Example: ALTER TABLE orders ADD CONSTRAINT fk_customer FOREIGN
    KEY (customer_id) REFERENCES customers(id);

#   DROP CONSTRAINT:
    ○ Used to remove an existing constraint from a table.
    ○ Example: ALTER TABLE orders DROP CONSTRAINT fk_customer;

#   TRUNCATE TABLE:
    ○ Used to delete the data inside a table, but not the table itself.
    ○ Syntax – TRUNCATE TABLE table_name


#   2. DATA QUERY/RETRIEVAL LANGUAGE (DQL or DRL)

    DQL (Data Query Language) is a subset of SQL focused on retrieving data from databases.
    The SELECT statement is the foundation of DQL and allows us to extract specific columns
    from a table.

#   SELECT:
    The SELECT statement is used to select data from a database.

    Syntax: SELECT column1, column2, ... FROM table_name;
    Here, column1, column2, ... are the field names of the table.
    If you want to select all the fields available in the table, use the following syntax:
    SELECT * FROM table_name;
    Ex: SELECT CustomerName, City FROM Customers;

#   WHERE:
    The WHERE clause is used to filter records.
    Syntax: SELECT column1, column2, ... FROM table_name WHERE condition;
    Ex: SELECT * FROM Customers WHERE Country='Mexico';
    
#   Operators used in WHERE are:
    = : Equal
    > : Greater than
    < : Less than
    >= : Greater than or equal
    <= : Less than or equal
    <> : Not equal.
    Note: In some versions of SQL this operator may be written  as !=

#   AND, OR and NOT:

    - The WHERE clause can be combined with AND, OR, and NOT    operators.
    - The AND and OR operators are used to filter records based on  more than one
    condition:
    - The AND operator displays a record if all the conditions  separated by AND are
    TRUE.
    - The OR operator displays a record if any of the conditions    separated by OR is TRUE.
    - The NOT operator displays a record if the condition(s) is NOT     TRUE.

#   Syntax:

    SELECT column1, column2, ... FROM table_name WHERE condition1 AND condition2 AND
    condition3 ...;
    SELECT column1, column2, ... FROM table_name WHERE condition1 OR condition2 OR
    condition3 ...;
    SELECT column1, column2, ... FROM table_name WHERE NOT condition;

#   Example:
    SELECT * FROM Customers WHERE Country=’India’ AND City=’Japan’;
    SELECT * FROM Customers WHERE Country=’America’ AND (City=’India’ OR
    City=’Korea’);

#   ● DISTINCT:
    Removes duplicate rows from query results.
    Syntax: SELECT DISTINCT column1, column2 FROM table_name;

#   ● LIKE:
    The LIKE operator is used in a WHERE clause to search for a specified pattern in a  column.
    There are two wildcards often used in conjunction with the LIKE operator:
    - The percent sign (%) represents zero, one, or multiple characters
    - The underscore sign (_) represents one, single character

    Example: SELECT * FROM employees WHERE first_name LIKE 'J%';
#    WHERE CustomerName LIKE 'a%'
    - Finds any values that start with "a"
#    WHERE CustomerName LIKE '%a'
    - Finds any values that end with "a"
#    WHERE CustomerName LIKE '%or%'
    - Finds any values that have "or" in any position
#    WHERE CustomerName LIKE '_r%'
    - Finds any values that have "r" in the second position

#    WHERE CustomerName LIKE 'a_%'
    - Finds any values that start with "a" and are at least 2 characters in length
#    WHERE CustomerName LIKE 'a__%'
    - Finds any values that start with "a" and are at least 3 characters in length
#    WHERE ContactName LIKE 'a%o'
    - Finds any values that start with "a" and ends with "o"

#   ● IN:
    Filters results based on a list of values in the WHERE clause.

    Example: SELECT * FROM products WHERE category_id IN (1, 2, 3);

#   ● BETWEEN:
    Filters results within a specified range in the WHERE clause.

    Example: SELECT * FROM orders WHERE order_date BETWEEN '2023-01-01' AND
    '2023-06-30';

#   ● IS NULL:
    Checks for NULL values in the WHERE clause.
    Example: SELECT * FROM customers WHERE email IS NULL;

#   ● AS:
    Renames columns or expressions in query results.
    Example: SELECT first_name AS "First Name", last_name AS "Last Name" FROM
    employees;

#   ● ORDER BY: 
    The ORDER BY clause allows you to sort the result set of a query based on one or more colums.

    Basic Syntax: 
        - The ORDER BY clause is used after the SELECT statement to sort query resutls.
        - Syntax: SELECT column1, column1, column2 FROM table_name ORDER BY column1
        [ASC|DESC];

    Ascending and Desecending Order:

        - By default, the ORDER BY clause sorts in ascending order(smallest to largest).
        - You can explecitily specify descending order using the DESC keyword.
        - Example: SELECT product_name, price FROM products ORDER BY price DESC;

    Sorting by Multiple Columns :
        - You can sort by multiple columns by listing them sequentially in the ORDER BY clause.
        - Rows are first sorted based on the first column, and for rows with equal values,
        subsequent columns are used for further sorting.
        - Example: SELECT first_name, last_name FROM employees ORDER By last_name,
        first_name;

    Sorting by Expressions:

    - It's possible to sort by calculated expressions, not just colummn values.
    - Example: SELECT product_name, price, price * 1.1 AS discounted_price FROM products ORDER By discounted_price;

    Sorting by NULL Values:
        - By default, NULL values are considered the smallest in ascending order and the largest in descending order.
        - You can control the sorting behaviour of NULL values using the NULLS FIRST or NULLS LAST options.
        - Example: SELECT column_name FROM table_name ORDER BY column_name NULLS LAST,
    
    Sorting by Position:
        - Instead of specifying column names, you can sort by column positions in the ORDER BY clause.
        - Example: SELECT product_name, price FROM products ORDER BY 2 DESC, 1 ASC;

    * GROUP BY

        The GROUP BY clause in SQL is used to group rows from a table based on one or more
        columns.

        Syntax:
- The GROUP BY clause follows the SELECT statement and is used to group rows
based on specified columns.
- Syntax: SELECT column1, aggregate_function(column2) FROM table_name
GROUP BY column1;
- Aggregation Functions:
○ Aggregation functions (e.g., COUNT, SUM, AVG, MAX, MIN) are often used
with GROUP BY to calculate values for each group.
○ Example: SELECT department, AVG(salary) FROM employees GROUP BY
department;
- Grouping by Multiple Columns:
○ You can group by multiple columns by listing them in the GROUP BY clause.
○ This creates a hierarchical grouping based on the specified columns.
○ Example: SELECT department, gender, AVG(salary) FROM employees
GROUP BY department, gender;
- HAVING Clause:
○ The HAVING clause is used with GROUP BY to filter groups based on
aggregate function results.
○ It's similar to the WHERE clause but operates on grouped data.
○ Example: SELECT department, AVG(salary) FROM employees GROUP BY
department HAVING AVG(salary) > 50000;
- Combining GROUP BY and ORDER BY:
○ You can use both GROUP BY and ORDER BY in the same query to control
the order of grouped results.
○ Example: SELECT department, COUNT(*) FROM employees GROUP BY
department ORDER BY COUNT(*) DESC;