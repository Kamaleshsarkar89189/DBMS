-- Constraints

-- SQL constriants are used to specify rules for data in a table.

-- NOT NULL ---> columns can't have a null value (col1 int NOT NULL)

-- UNIQUE ---> all values in columns are different (col2 int UNIQUE)

-- PRIMARY KEY ---> makes a columns unique & not null but used only for one

id int PRIMARY KEY

CREATE TABLE temp (
    id int not null,
    PRIMARY KEY (id)
);

CREATE TABLE temp1 (
    id INT UNIQUE
);

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50)
);
CREATE TABLE temp1 (
    id INT,
    name varchar(50),
    city varchar(30),
    primary key (id, name)
);

drop table temp1;

insert into temp1 values (202);
insert into temp1 values (202);

-- FOREIGN KEY 

-- prevent actions that would destroy links between tables

CREATE TABLE temp (
    user_id int,
    FOREIGN KEY (user_id) references user(id)
);

DEFAULT 

-- sets the default value of a column

    salary INT DEFAULT 25000

-- Example with code
create table employee (
	id int,
    salary int default 25000);
    
insert into employee (id) values (103);

select * from employee;



-- CHECK 

    -- it can limit the values allowed in a column

    CREATE TABLE city (
        id INT PRIMARY KEY,
        city VARCHAR(50),
        age INT,
        CONSTRAINT age_check CHECK (age >= 18 AND city="Kolkata")
    );

    CREATE TABLE newTable (
        age INT CHECK (age >= 18)
    );

-- Practice 

CREATE database college;
use college;

create table student (
    rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student
(rollno, name, marks, grade, city)
values
    (1, "Kamalesh", 90, "A", "Kaliyaganj"),
    (2, "Kisan", 87, "B", "Raiganj"),
    (3, "Riya", 78, "B", "Siliguri"),
    (4, "Ankit", 92, "A", "Raiganj"),
    (5, "Puja", 65, "C", "Balurghat"),
    (6, "Raj", 81, "B", "Kaliyaganj"),
    (7, "Nisha", 74, "B", "Islampur"),
    (8, "Amit", 88, "A", "Raiganj"),
    (9, "Sneha", 70, "C", "Balurghat"),
    (10, "Ravi", 85, "B", "Malda"),
    (11, "Tanisha", 91, "A", "Kaliyaganj")

    select name, marks from student;


    -- (select all data from the table)
    select * from student; 

    -- (select distinct data from the table it means the values which are duplicate they don't show )
    select distinct city from student;

    -- Clauses
    select * from student where marks > 80;
    select * from student where city = "Kaliyaganj",

    
    -- Where clause

    -- Using Operators in WHERE

    -- Arithmatice Operator : +, -, *, /, %
    -- Comparison Operators: = , !, > >=, <, <=
    -- Logical Operators: AND, OR, NOT, BETWEEN, ALL, LIKE, ANY
    -- Bitwise Operators: &, |

    -- Between (selects for a given range)

    select * from student where marks between 88 and 94;

    -- In (matches any value in the list)

    select * from student where city in ("Kaliyaganj", "Raiganj");

    -- NOT (to negate the given condition)

    select * from student where city not in ("Kaliyaganj", "Raiganj")

-- Limit Clause

    -- Sets an upper limit on number of(tuples) rows to be returned

    select * from student limit 4;


-- Order By Clause

    -- To sort in ascending(ASC) or descending order (DESC)

    select * from student order by city asc;