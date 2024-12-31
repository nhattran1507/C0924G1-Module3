create database libary;
use libary;
create table books(
id_book varchar(10),
name_book varchar(100),
actor varchar(100),
description_book varchar(255),
number_book int,
primary key(id_book));

create table students(
id_student int auto_increment,
name_student varchar(50),
student_class varchar(50),
primary key(id_student));

create table borrow_cards(
id_card varchar(10),
id_book varchar(10),
id_student int,
status_borrow boolean,
date_borrow datetime,
date_payment datetime,
primary key(id_card),
foreign key(id_book)references books(id_book),
foreign key(id_student)references students(id_student));


INSERT INTO books (id_book, name_book, actor, description_book, number_book) VALUES
('S-001', 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic novel of the Jazz Age', 10),
('S-002', '1984', 'George Orwell', 'Dystopian social science fiction novel', 15),
('S-003', 'To Kill a Mockingbird', 'Harper Lee', 'Novel about racial injustice', 8),
('S-004', 'Pride and Prejudice', 'Jane Austen', 'Romantic novel', 12),
('S-005', 'Moby-Dick', 'Herman Melville', 'Adventure novel about whaling', 5);


INSERT INTO students (name_student, student_class) VALUES
('Alice Johnson', 'Class A'),
('Bob Smith', 'Class B'),
('Charlie Brown', 'Class A'),
('Diana Prince', 'Class C'),
('Edward Elric', 'Class B');
