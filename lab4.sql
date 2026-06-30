create database student_db;
create table Student(
StudentID int primary key,
Name varchar(50),
Age int,
 Department varchar(30)
);
alter table Student add Email varchar(50);
alter table Student alter column Name varchar(100);
alter table Student drop column Age;
truncate table Student;
exec sp_rename 'Student','Student_Info';
drop table Student;