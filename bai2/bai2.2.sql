create database sale_management;
use sale_management;
create table customers(
cId int auto_increment primary key,
cName varchar(255) not null,
cAge int);
create table products(
pId int auto_increment primary key,
pName varchar(255) not null,
pPrice decimal(10,2));
create table orders(
oId int auto_increment primary key,
cId int,
oDate date not null,
oTotalPrice decimal(10,2),	
foreign key (cId) references customers(cId));
create table orders_detail(
oId int,
pId int,
odQty int not null,
foreign key (oId) references orders(oId),
foreign key (pId) references products(pId));
