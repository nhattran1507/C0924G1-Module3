create database student_management;
use student_management;
create table classes(
ClassId int auto_increment primary key,
ClassName varchar(60) not null,
StartDate date	not null,
StatusClass bit);
create table students(
StudentId int auto_increment primary key,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
StatusStudent bit,
ClassId int not null,
foreign key (ClassId) references classes(ClassId));
create table subjects(
SubId int auto_increment primary key,
SubName varchar(30) not null,
Credit tinyint not null default 1 check ( Credit >= 1 ),
StatusSub bit default 1);
create table mark(
MarkId int auto_increment primary key,
SubId int not null,
StudentId int not null,
Mark float default 0 check (Mark between 0 and 100),
ExamTimes tinyint default 1,
Unique (SubId, StudentId),
foreign key (SubId) references subjects(SubId),
foreign key (StudentId) references students(StudentId));
select * from students where StudentName like 'h%';
select * from classes where month(StartDate) = 12;
select * from subjects where Credit between 3 and 5;
update students set ClassId = 2 where StudentName = 'Hung';
select s.StudentNam, sub.SubName, m.Mark
from mark m
join students s on m.StudentId = s.StudentId
join subjects sub on m.SubId = sub.SubId
order by m.Mark desc, s.StudentName asc;
