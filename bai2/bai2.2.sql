create database sale_management;
use sale_management;

create table customers (
    c_id int auto_increment primary key,
    c_name varchar(255) not null,
    c_age int
);

create table products (
    p_id int auto_increment primary key,
    p_name varchar(255) not null,
    p_price decimal(10,2)
);

create table orders (
    o_id int auto_increment primary key,
    c_id int,
    o_date date not null,
    o_total_price decimal(10,2),
    foreign key (c_id) references customers(c_id)
);

create table orders_detail (
    o_id int,
    p_id int,
    od_qty int not null,
    foreign key (o_id) references orders(o_id),
    foreign key (p_id) references products(p_id)
);
