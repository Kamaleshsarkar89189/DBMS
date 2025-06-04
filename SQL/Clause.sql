-- Where Clause
    
    -- To define some conditions

    select col1, col2 from table_name
    where conditions;

    -- Example

    select * from student where marks > 80;
    select * from student where city = "Kaliyaganj",


-- Group By Clause

    -- Groups rows that have the same values into summary rows.
    -- It collects data from multiple records and groups the result by one or more column.

    Generally we use group by with some aggregation function.

    Count numbers of students in each city

    select city, count(name) from student group by city;


-- Having Clause

    -- Similar to Where i.e. applies some conditon on rows.

    -- Used when we want to apply any condition after grouping.

    Count number of students in each city where max marks cross 90.

    select count(name), city
    from student group by city
    having max(marks) > 90;


-- General Order

    select column_s
    from table_name
    where condition
    group by column_s
    having condition
    order by column_s asc;