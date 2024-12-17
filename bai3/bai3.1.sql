create database student_management;

use student_management;

create table classes (
    class_id int auto_increment primary key,
    class_name varchar(60) not null,
    start_date date not null,
    status_class bit
);

create table students (
    student_id int auto_increment primary key,
    student_name varchar(30) not null,
    address varchar(50),
    phone varchar(20),
    status_student bit,
    class_id int not null,
    foreign key (class_id) references classes(class_id)
);

create table subjects (
    sub_id int auto_increment primary key,
    sub_name varchar(30) not null,
    credit tinyint not null default 1 check (credit >= 1),
    status_sub bit default 1
);

create table mark (
    mark_id int auto_increment primary key,
    sub_id int not null,
    student_id int not null,
    mark float default 0 check (mark between 0 and 100),
    exam_times tinyint default 1,
    unique (sub_id, student_id),
    foreign key (sub_id) references subjects(sub_id),
    foreign key (student_id) references students(student_id)
);

select * 
from students 
where student_name like 'h%';

select * 
from classes 
where month(start_date) = 12;

select * 
from subjects 
where credit between 3 and 5;

update students 
set class_id = 2 
where student_name = 'Hung';

select s.student_name, sub.sub_name, m.mark
from mark m
join students s on m.student_id = s.student_id
join subjects sub on m.sub_id = sub.sub_id
order by m.mark desc, s.student_name asc;
