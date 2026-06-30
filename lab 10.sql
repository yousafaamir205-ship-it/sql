create table employeees(
emp_id int primary key,
 emp_name varchar(50),
dept_id int,
salary int,
 commission int
);

insert into employees values(1,'Ali',10,40000,null);
insert into employees values (2,'Sara',20,55000,3000);
insert into employees values(3,'Ahmed',10,30000,null);
insert into employees values(4,'Hina',30,70000,5000);
insert into employees values(5,'Usman',20,45000,null);
 insert into employees values(6,'Nimra',30,60000,2000);
insert into employees values(7,'Bilal',10,25000,null);
select *
from employees
where salary between 30000 and 60000;
select *
 from employees
where salary not between 40000 and 70000;
select *
from employees
 where dept_id in(10,30);
select *
from employees
where emp_id in(1,3,5,7);
select *
from employees
where emp_name like 'A%';
select *
from employees
 where emp_name like '%a';

select *
from employees
where emp_name like '_i%';

select dept_id,sum(salary) as total_salary
from employees
group by dept_id;
select dept_id,avg(salary) as avg_salary
 from employees
group by dept_id;
select dept_id,
max(salary) as highest_salary,
 min(salary) as lowest_salary
from employees
group by dept_id;
select *
from employees
where commission is null;
select *
from employees
where commission is not null;
select dept_id,avg(salary) as avg_salary
from employees
group by dept_id
having avg(salary)>50000;
select dept_id,count(*) as emp_count
 from employees
group by dept_id
having count(*)>2;