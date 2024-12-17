create database order_management;

use order_management;

create table dispatch_notes (
    dispatch_note_id varchar(5) primary key,
    dispatch_date date
);

create table receiving_notes (
    receiving_note_id varchar(5) primary key,
    receiving_date varchar(5)
);

create table supplies (
    supplies_id varchar(5) primary key,
    supplie_name varchar(50)
);

create table suppliers (
    supplier_id varchar(5) primary key,
    supplier_name varchar(50),
    supplier_address varchar(50),
    supplier_phone varchar(5)
);

create table sales_order (
    sales_order_id varchar(5) primary key,
    sales_date date
);

create table dispatch_note_detail (
    dispatch_note_id varchar(5),
    supplies_id varchar(5),
    sale_unit_price decimal(10,2),
    quality_sale int,
    primary key (dispatch_note_id, supplies_id),
    foreign key (dispatch_note_id) references dispatch_notes(dispatch_note_id),
    foreign key (supplies_id) references supplies(supplies_id)
);

create table receiving_notes_detail (
    receiving_note_id varchar(5),
    supplies_id varchar(5),
    purchase_unit_price decimal(10,2),
    quality_purchase int,
    primary key (receiving_note_id, supplies_id),
    foreign key (receiving_note_id) references receiving_notes(receiving_note_id),
    foreign key (supplies_id) references supplies(supplies_id)
);

create table supply (
    supplier_id varchar(5),
    supplies_id varchar(5),
    primary key (supplier_id, supplies_id),
    foreign key (supplier_id) references suppliers(supplier_id),
    foreign key (supplies_id) references supplies(supplies_id)
);
