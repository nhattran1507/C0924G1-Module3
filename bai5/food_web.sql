create database food_web;
use food_web;
create table menu(
id int auto_increment primary key,
food_code char(50),
food_name char(50),
food_description char(255),
food_price char(50)
);
