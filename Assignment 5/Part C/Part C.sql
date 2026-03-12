-- 7. Display student Name along with CourseName for all enrollments.

select s.Name,c.Course_Name
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on e.Course_Id=c.Course_Id;



-- 8. Display student Name, CourseName, and Semester.

select s.Name,c.Course_Name,e.Semester
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on e.Course_Id=c.Course_Id;



-- 9. Display student Name, CourseName, and Grade for Semester 4 only.

select s.Name,c.Course_Name,e.Grade
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on e.Course_Id=c.Course_Id
  where e.Semester='4th';



-- 10. Display all courses taken by a student whose StudentID is 'S401'.

select c.Course_Name
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on e.Course_Id=c.Course_Id
  where s.Student_Id=23157128013;