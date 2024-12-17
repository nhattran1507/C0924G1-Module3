create database order_management;

use order_management;

create table dispatch_notes(
DispatchNoteId varchar(5) primary key,
DispatchDate date);

create table receiving_note(
ReceivingNoteID varchar(5) primary key,
ReceivingDate varchar(5));

create table supplies(
SuppliesID varchar(5) primary key,
SupplieName varchar(50));

create table suppliers(
SupplierID varchar(5) primary key,
SupplierName varchar(50),
SupplierAdress varchar(50),
SupplierPhone varchar(5));

create table sales_order(
Sales_Order_ID varchar(5) primary key,
Sale_Date date);

alter table receiving_note rename to receiving_notes;
alter table receiving_note rename column ReceivingNoteID to ReceivingNoteId;
alter table supplies rename column SuppliesID to SuppliesId;
alter table suppliers rename column SupplierID to SupplierId;
alter table sales_order rename column Sales_Order_ID to SalesOrderId;
alter table sales_order rename column Sale_Date to SalesDate;

create table dispatch_note_detail(
DispatchNoteId varchar(5),
SuppliesId varchar(5),
SaleUnitPrice decimal(10,2),
QuatilitySale int,
primary key (DispatchNoteid, SuppliesId),
foreign key (DispatchNoteid) references dispatch_notes(DispatchNoteid),
foreign key (SuppliesId) references supplies(SuppliesId));

create table receiving_notes_detail(
ReceivingNoteId varchar(5),
SuppliesId varchar(5),
PurchaseUnitPrice decimal(10,2),
QuatilytiPurchase int,
primary key (ReceivingNoteId, SuppliesId),
foreign key (ReceivingNoteId) references receiving_notes(ReceivingNoteId),
foreign key (SuppliesId) references supplies(SuppliesId));

create table supply(
SupplierId varchar(5),
SuppliesId varchar(5),
primary key(SupplierId, SuppliesId),
foreign key(SupplierId) references suppliers(SupplierId),
foreign key(SuppliesId) references suppliers(SuppliesId));

