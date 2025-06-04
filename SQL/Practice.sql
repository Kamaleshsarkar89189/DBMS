create database users;

use users;

create table details(
	id int primary key,
    name varchar(50),
    age int not null
);

create table auth(
	username varchar(20) primary key,
    email varchar(50),
    password varchar(30)
);
insert into details values(1, "Kamalesh", 22);
insert into details values(2, "Kisan", 21);

insert into auth 
values("kamalesh123", "kamalesh@gmail.com", "kama@1234");

select * from details;
select * from auth;
show databases;

show tables;



















