create database demo;

use demo;

create table products(
id int auto_increment primary key,
product_code varchar(50),
product_name varchar(50),
product_price decimal(10,2),
product_amount int,
product_description varchar(200),
product_status bit
);

insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
values
("prd1", "sữa tươi", "25000.00", 10, "Sữa thơm ngon bổ dưỡng", 1),
("prd2", "bánh mì", "15000.00", 20, "Bánh mì nóng giòn", 1),
("prd3", "nước ngọt", "12000.00", 15, "Nước giải khát mát lạnh", 1),
("prd4", "kẹo dẻo", "8000.00", 50, "Kẹo dẻo nhiều màu", 1),
("prd5", "trà sữa", "35000.00", 8, "Trà sữa topping trân châu", 1);

create unique index idx_unique_product_code on products(product_code);

create index idx_composite_name_price on products(product_name, product_price);

explain select * from products where product_code = "prd1";
explain select * from products where product_name = "sữa tươi" and product_price = 25000.00;

create view view_product as
select product_code, product_name, product_price, product_status
from products;

create or replace view view_product as
select product_code, product_name, product_price, product_status, product_amount
from products;

drop view view_product;

select * from view_product;

delimiter //
create procedure get_all_products()
begin
    select * from products;
end //
delimiter ;

call get_all_products();

delimiter //
create procedure add_product(
    in p_code varchar(50),
    in p_name varchar(50),
    in p_price decimal(10,2),
    in p_amount int,
    in p_description varchar(200),
    in p_status bit
)
begin
    insert into products(product_code, product_name, product_price, product_amount, product_description, product_status)
    values (p_code, p_name, p_price, p_amount, p_description, p_status);
end //
delimiter ;

call add_product("prd6", "kẹo socola", 20000.00, 25, "Socola thơm ngon", 1);

delimiter //
create procedure update_product(
    in p_id int,
    in p_code varchar(50),
    in p_name varchar(50),
    in p_price decimal(10,2),
    in p_amount int,
    in p_description varchar(200),
    in p_status bit
)
begin
    update products
    set 
        product_code = p_code,
        product_name = p_name,
        product_price = p_price,
        product_amount = p_amount,
        product_description = p_description,
        product_status = p_status
    where id = p_id;
end //
delimiter ;

call update_product(1, "prd1", "sữa đặc", 30000.00, 12, "Sữa đặc có đường", 1);

delimiter //
create procedure delete_product(
    in p_id int
)
begin
    delete from products where id = p_id;
end //
delimiter ;

call delete_product(6);

