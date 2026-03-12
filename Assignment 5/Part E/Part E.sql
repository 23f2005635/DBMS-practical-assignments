-- 14. Display student Name and CourseName for students belonging to Department 'AI01'.

 select s.Name, c.Course_Name
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on e.Course_Id=c.Course_Id
  where s.Department_Id='AI01';



-- 15. Display student Name and CourseName sorted by student name in ascending order.

select s.Name,c.Course_Name
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on e.Course_Id=c.Course_Id
  order by s.Name Asc;



-- 16. Display faculty Name and CourseName sorted by course credits in descending order.

select f.Name, c.Course_Name
  from Faculty f inner join Course c on f.Faculty_Id=c.Faculty_Id
  order by c.Credits desc;