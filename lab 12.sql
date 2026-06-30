create database SampleDB;
create table client_master(
client_no varchar(6),
 name varchar(20),
address1 varchar(30),
address2 varchar(30),
 city varchar(15),
state varchar(15),
pincode numeric(10,0),
bal_due numeric(10,2)
);
select client_no,name,city
into new_client_master
from client_master;
insert into client_master(client_no,name,city)
values('C001','John Doe','New York');
insert into new_client_master(client_no,name,city)
select client_no,name,city
 from client_master;
insert into new_client_master(client_no,name,city)
select client_no,name,city
from client_master
where city='New York';
select * from client_master;
select client_no,name from client_master;

select distinct city from client_master;
select client_no,name
from client_master
where city='New York';
create table product_master(
product_no varchar(10),
description varchar(50),
 profit_percent numeric(5,2),
unit_measure varchar(20),
qty_on_hand numeric(10,0),
reorder_lvl numeric(10,0),
sell_price numeric(10,2),
cost_price numeric(10,2)
);