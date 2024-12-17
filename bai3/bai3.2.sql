use sale_management;

insert into customers (cName, cAge)
values 
('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

insert into products (pName, pPrice)
values
('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),DispatchNoteId
('Bep Dien', 2);

insert into orders (oId, cId, oDate, oTotalPrice)
values
(1,1,'2006-03-21', null),
(2,2,'2006-03-23', null),
(3,1, '2006-03-16', null);

insert into orders_detail (oId, pId, odQty)
values
(1,1,3),
(1,3,7),
(1,4,1),
(3,1,2),
(2,3,3);

select oId, oDate, oTotalPrice
from orders;

select c.cId, c.cName as CustomerName, p.pName as productName
from customers c
join orders o on c.cId = o.cId
join orders_detail od on o.oId = od.oId
join products p on od.pId = p.pId;

select c.cName as CustomerName
from customers c
left join orders o on c.cId = o.oId
where o.oId is null;

select o.oId, o.oDate, sum(od.odQty*p.pPrice) as oTotalPrice 
from orders o
join orders_detail od on o.oId = od.oId
join products p on od.pId = p.pId
group by o.oId, o.oDate;
