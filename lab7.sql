create table Student(
ID int primary key,
Name varchar(50),
Age int,
 City varchar(50)
);
insert into Student(ID,Name,Age,City)
values(1,'Ali',20,'Lahore');

update Student set Name='Asad'
where ID=1;

delete from Student
where ID=1;
delete from Student;
select ID,Name,Age,City from Student;