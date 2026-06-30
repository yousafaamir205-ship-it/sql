select count(*) as total_students
from Students;
select avg(Marks) as avg_marks
 from Enrollments;

select CourseID,max(Marks) as max_marks
from Enrollments
 group by CourseID;