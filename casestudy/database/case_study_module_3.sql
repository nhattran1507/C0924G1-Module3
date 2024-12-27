create database order_food;
use order_food;

-- Bảng khách hàng
create table customers (
    customer_id int auto_increment primary key,
    customer_name varchar(50) not null,
    customer_email varchar(100) unique not null,
    customer_password varchar(255) not null,
    customer_phone varchar(15),
    customer_address varchar(100)
);

-- Bảng nhà hàng
create table restaurants (
    restaurant_id int auto_increment primary key,
    restaurant_name varchar(100) not null,
    restaurant_address varchar(100) not null,
    restaurant_phone varchar(15) not null,
    restaurant_email varchar(100) not null
);

-- Bảng thực đơn món ăn
create table food_menu (
    food_id int auto_increment primary key,
    restaurant_id int not null,
    food_name varchar(100) not null,
    food_description varchar(255),
    food_price decimal(10, 2) not null,
    foreign key (restaurant_id) references restaurants(restaurant_id) on delete cascade
);

-- Bảng đơn hàng
create table order_table (
    order_id int auto_increment primary key,
    customer_id int not null,
    restaurant_id int not null,
    order_date datetime not null,
    order_total_price decimal(10, 2) not null,
    order_status varchar(50) not null default 'pending',
    foreign key (customer_id) references customers(customer_id) on delete cascade,
    foreign key (restaurant_id) references restaurants(restaurant_id)
);

-- Bảng chi tiết đơn hàng
create table order_detail (
    detail_id int auto_increment primary key,
    order_id int not null,
    food_id int not null,
    detail_quantity int not null,
    detail_price decimal(10, 2) not null,
    foreign key (order_id) references order_table(order_id) on delete cascade,
    foreign key (food_id) references food_menu(food_id) on delete cascade
);
