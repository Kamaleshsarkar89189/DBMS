-- Joins in SQL
    Joins is used to combine rows from two or more tables, based on a related column between them.


-- Types of Joins

    -- # Inner Join
    -- # Left Join      }
    -- # Right Join      }  Outer Joins
    -- # Full Join      }


-- Inner Join

    -- Returns records that have matching values in both tables

    -- Syntax

    select column
    from tableA
    inner join tableB
    on tableA.column_name = tableB.column_name;

    -- Example

    student

    student_id          name
    101                 Kamalesh
    102                 Kisan
    103                 Elvish

    course
    student_id          course
    102                 Math
    103                 English
    105                 CS
    106                 Biology


    -- SQL Commands

    select * from student as s
    inner join course as c
    on s.student_id = c.student_id;


    -- Result

    student_id          name        course
    102                 Kisan       Math
    103                 Elvish      English


-- Left Join

    -- Returns all records from the left table, and the matched records from the right table

-- Syntax

    select column
    from tableA
    left join tableB
    on tableA.column_name = tableB.column_name;


-- Example

    select * from student as s
    left join course as c
    on s.student_id = c.student_id;

-- Result

    student_id          name        course
    101                 Kamalesh    null
    102                 Kisan       Math
    103                 Elvish      English

-- Right Join

    -- Returns all records from the right table, and the matched records from the left table

-- Syntax

    select column
    from tableA
    right join tableB
    on tableA.column_name = tableB.column_name;

-- Example

select * 
from student as s
right join course as c
on s.student_id = c.student_id;

-- Result

    student_id          course          name
    102                 Math            Kisan
    103                 English         Elvish
    105                 CS              null
    106                 Biology         null


-- Full Join

    -- Returns all records when there is a match in either left or right table

-- Syntax in MySQL

    select * from student as a
    left join course as b 
    on a.id = b.id
    union 
    select * from student as a 
    right join course as b 
    on a.id = b.id;


-- Result

    student_id          course          name
    101                 null            Kamalesh
    102                 Math            Kisan
    103                 English         Elvish
    105                 CS              null
    106                 Biology         null

-- Write SQL commands to display the right exlcusive join and left exclusive join:

    -- For Left Exclusive Join
    select *
    from student as a 
    left join course as b 
    on a.id = b.id
    where b.id is null;

    -- For Left Exclusive Join
    select *
    from student as a 
    right join course as b 
    on a.id = b.id
    where a.id is null;

-- Self Join

It is a regular join but the table is joined with itself.

Syntax

    SELECT column(s)
    FROM table as a
    JOIN table as b
    ON a.col_name = b.col_name;

-- Example

    employee

    emp_id                  name                manager_id          manager_name
      101                   adam                103                 casey
      102                   bob                 104                 donald
      103                   casey               null                null
      104                   donald              103                 casey



    create table employee(
        id int primary key,
        name varchar(50),
        manager_id int,
    );

    insert into employee (id, name, manager_id)
    values
    (101, "adam", 103),
    (102, "bob", 104),
    (103, "casey", null),
    (104, "donald", 103),

    select * from employee;

    select a.name as manager_name, b.name
    from employee as a
    join employee as b 
    on a.id = b.manager_id;

-- Result 

    manager_name            name

    casey                   adam
    donald                  bob
    casey                   donald


-- Union

    It is used to combine the result-set of two or more SELECT statements.
    Gives UNIQUE records.

    TO use it:

        . every SELECT should have same no. of columns
        . columns must have similar data types 
        . columns in every SELECT should be in same order

-- Syntax

    select column from tableA
    union
    select column from tableB


union all 

    gives duplicate values
