create database company_db;
create table Employee(
EmpID int primary key,
EmpName varchar(50),
Department varchar(30),
 Salary decimal(10,2)
);
insert into Employee values(1,'Amit','IT',45000.00);
insert into Employee values(2,'Riya','HR',40000.00);
 insert into Employee values(3,'Karan','Finance',55000.00);
select EmpID,EmpName,Department,Salary from Employee;
update Employee set Salary=50000.00 where EmpID=2;
delete from Employee where EmpID=3;
alter table Employee add Email varchar(50);
grant select,insert on Employee to [user1];

revoke insert on Employee from [user1];