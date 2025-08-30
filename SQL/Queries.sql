-- Table related Queries

-- Update (to update existing rows)

    update table_name
    set col1 = value1, col2 = value2
    where condition;

    set sql_safe_updates = 0; 
    -- // this is important to white for mysql to avoide safe update

    update student
    set grade = "O"
    where grade = "A";

-- Delete(to delete existing rows)

    delete from table_name
    where condition;


    delete from student where marks < 45;

-- Table related Queries

Alter(to change the schema)

ADD Column

    alter table table_name
    add column_name datatpe constraint;

DROP Column

    alter table table_name
    drop column column_name;

RENAME Table

    alter table table_name
    rename to new table_name;

CHANGE Column (rename)
    alter table table_name
    chnage column old_name new_name new_datatype new_constraint;

MODIFY Column (modify datatpe/constraint)

    alter table table_name
    modify col_name new_datatype new_constraint;

-- SQL Commands
ADD Column

    alter table student
    add age int not null default 20;

DROP Column

    alter table student
    drop column student_age;

RENAME Table

    alter table student
    rename to new boy;

CHANGE Column (rename)
    alter table student
    chnage age student_age int;

MODIFY Column (modify datatpe/constraint)

    alter table student
    modify age varchar(2);


-- Truncate(to delete table's data)

    TRUNCATE TABLE table_name; 
    

-- SQL Sub Queries

