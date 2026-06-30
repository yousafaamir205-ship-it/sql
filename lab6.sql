select first_name,last_name from employees;
select * from students where age>20;

select name,salary from employees where department='HR';

select name from students where name like 'A%';
select distinct department from employees;
select name,age from students order by age asc;
select name,salary from employees order by salary desc;

select name,department,salary from employees
order by department asc,salary desc;
select distinct department,salary
from employees
where salary>50000
order by department asc;