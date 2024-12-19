use sale_management;

insert into customers (c_name, c_age)
values 
('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

insert into products (p_name, p_price)
values
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);

insert into orders (o_id, c_id, o_date, o_total_price)
values
(1, 1, '2006-03-21', null),
(2, 2, '2006-03-23', null),
(3, 1, '2006-03-16', null);

insert into orders_detail (o_id, p_id, od_qty)
values
(1, 1, 3),
(1, 3, 7),
(1, 4, 1),
(3, 1, 2),
(2, 3, 3);

select o_id, o_date, o_total_price
from orders;

select c.c_id, c.c_name as customer_name, p.p_name as product_name
from customers c
join orders o on c.c_id = o.c_id
join orders_detail od on o.o_id = od.o_id
join products p on od.p_id = p.p_id;

select c.c_name as customer_name
from customers c
left join orders o on c.c_id = o.c_id
where o.o_id is null;

select o.o_id, o.o_date, sum(od.od_qty * p.p_price) as o_total_price 
from orders o
join orders_detail od on o.o_id = od.o_id
join products p on od.p_id = p.p_id
group by o.o_id, o.o_date;
