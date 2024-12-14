create database baitap1;
use baitap1;
create table students(
id int auto_increment primary key,
name varchar(200),
age int,
country varchar(50)
);
insert into students(name, age, country)
value ("nhattm", 18,"danang"), ("dungn", 18,"hoian"), ("thaonhpt", 18,"danang");
select * from students;
create table teachers(
id int,
name varchar(200),
age int,
country varchar(50)
);

drop table student;
alter table teachers 
modify id int auto_increment primary key;
insert into teachers(name, age, country)
value ("haitt", 30," danang"), ("chanhtv", 30,"danang");
select * from teachers;


