create table employees(
emp_id int primary key,
emp_name varchar(50),
 dept_id int,
salary int,
experience int
);
insert into employees values(1,'Ali',10,40000,3);
insert into employees values(2,'Sara',20,55000,5);
 insert into employees values(3,'Ahmed',10,30000,2);
insert into employees values(4,'Hina',30,70000,6);
insert into employees values(5,'Usman',20,45000,4);
select emp_name,salary*1.1 as increased_salary
from employees;
select emp_name,salary*12 as yearly_salary
from employees;
select *
from employees
where salary>40000 and salary<60000;

select *
from employees
where dept_id=10 or dept_id=20;

select *
from employees
where not dept_id=30;

select *
from employees
where experience>=4;