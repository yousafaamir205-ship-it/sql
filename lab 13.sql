create database JoinDemo;
go
create table Departments(
dept_id int primary key,
dept_name varchar(50)
);
create table Employeees(
emp_id int primary key,
emp_name varchar(50),
department_id int,
salary decimal(10,2),
manager_id int,
foreign key(department_id) references Departments(dept_id),
foreign key(manager_id) references Employees(emp_id)
);
create table SalaryGrades(
grade_id int primary key,
grade_name varchar(20),
min_salary decimal(10,2),
max_salary decimal(10,2)
);

insert into Departments values(1,'HR');
 insert into Departments values(2,'IT');
 insert into Departments values(3,'Finance');
   insert into Departments values(4,'Marketing');
insert into Departments values(5,'Operations');
 insert into Employees values(101,'John Doe',1,50000,null);
insert into Employees values(102,'Jane Smith',2,65000,101);
insert into Employees values(103,'Mike Johnson',2,70000,101);
insert into Employees values(104,'Sarah Wilson',3,55000,102);
insert into Employees values(105,'Tom Brown',4,60000,103);
 insert into Employees values(106,'Emily Davis',null,48000,102);
insert into Employees values(107,'Robert Lee',5,75000,101);
insert into SalaryGrades values(1,'Grade A',0,50000);
insert into SalaryGrades values(2,'Grade B',50001,70000);
insert into SalaryGrades values(3,'Grade C',70001,100000);
select e.emp_id,e.emp_name,d.dept_name,e.salary
from Employees e
inner join Departments d on e.department_id=d.dept_id;
select e.emp_id,e.emp_name,d.dept_name,e.salary
from Employees e
left join Departments d on e.department_id=d.dept_id;
select e.emp_id,e.emp_name,d.dept_name,e.salary
from Employees e
right join Departments d on e.department_id=d.dept_id;
select e.emp_id,e.emp_name,d.dept_name,e.salary
from Employees e
full outer join Departments d on e.department_id=d.dept_id;
select e1.emp_id,
e1.emp_name as employee_name,
e1.manager_id,
e2.emp_name as manager_name
from Employees e1
left join Employees e2 on e1.manager_id=e2.emp_id;
select e.emp_id,e.emp_name,e.salary,sg.grade_name
from Employees e
join SalaryGrades sg on e.salary between sg.min_salary and sg.max_salary
order by e.salary desc;
select e.emp_id,e.emp_name,d.dept_name,e.salary,sg.grade_name
from Employees e
left join Departments d on e.department_id=d.dept_id
join SalaryGrades sg on e.salary between sg.min_salary and sg.max_salary
order by d.dept_name,e.salary desc;
select e.emp_name,d.dept_name
from Employees e
cross join Departments d;
select e1.emp_id,
e1.emp_name,
e1.department_id,
e1.salary,
d.dept_name,
avg_sal.department_avg
from Employees e1
join Departments d on e1.department_id=d.dept_id
join(
select department_id,avg(salary) as department_avg
from Employees
where department_id is not null
group by department_id
) avg_sal on e1.department_id=avg_sal.department_id
where e1.salary>avg_sal.department_avg;