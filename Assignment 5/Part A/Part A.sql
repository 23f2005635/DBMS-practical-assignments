-- 1. Display StudentID and Name from Student table along with CourseID from Enrollment table.

select s.Student_Id , s.Name , e.Course_Id
  from Student s inner join Enrollment e
  on s.Student_Id = e.Student_Id;



-- 2. Display student Name and Semester for all enrolled students.

select  s.Name , e.Semester
  from Student s inner join Enrollment e
  on s.Student_Id = e.Student_Id;



-- 3. Display student Name and Grade obtained in each course.

select  e.Course_Id,s.Name , e.grade
  from Student s inner join Enrollment e
  on s.Student_Id = e.Student_Id;

