create database users;

use users;

create table details(
	id int primary key,
    name varchar(50),
    age int not null
);

insert into details values(1, "Kamalesh", 22);
insert into details values(2, "Kisan", 21);

select * from details;