create table student(
student_id int,
student_name varchar(50),
 age int,
department varchar(50)
);
insert into student(student_id,student_name,age,department)
values(1,'Ali',20,'Computer Science');
select * from student;

update student set department='Software Engineering'
where student_id=1;
delete from student
where student_id=1;