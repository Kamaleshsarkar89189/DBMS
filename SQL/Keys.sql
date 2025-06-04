-- Keys 

-- Primary Key
-- It is column (or set of columns) in a table that uniquely identifies each row. (a unique id)
-- There is only 1 PK & it should be NOT null.


-- Forein Key
-- A foreign key is a column (or set of columns) in a table that refers to the primary key
-- There can be multiple FKs.
-- FKs can have duplicate & null values.


-- Revisiting FK

    -- Let's suppose we have two tables one is department and another is teacher. In the department table we have id and department name. In the teacher table we have id, teacher name and department_id. So, in the teacher table there has a department_id which is same as the department table. The department_id referse to the department table. Here department_id is a FK which referance to department table's id. Both tables are connected by Foreign Key.


    Visual Example: 
    
    Parent table               Child table
    department                |  teacher

    id          name          |  id          name         department_id (FK)
    1           Science <--->   1           Sudip           1
    2           Math     FK   |  2           Kuldip          2       
    3           Physics       |  3           Mallu           3


    create table dept (
        id int primary key,
        name varchar(50)
    );

    create table teacher (
        id int primary key,
        name varchar(50),
        dept_id int,
        foreign key (dept_id) referance dept(id)
    );

-- Cascading for FK

-- On Delete Cascade

When we create a foreign key using this option, it deletes the referancing rows in the child table when the referanced row is deleted in the parent table which has a primary key.

-- On Update  Cascade

When we create a foreign key using UPDATE CASCADE the referancing rows are updated in the child table when the referanced row is updated in the parent table which has a primary key.


    create table student (
        id int primary key,
        courseId int,
        foreign key(courseId) referances course(id)
        on delete cascade
        on update cascade
    );


