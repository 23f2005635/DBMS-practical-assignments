-- 11. Display student Name and DepartmentID along with CourseName.
select s.Name,s.Department_Id,c.Course_Name
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on c.Course_Id=e.Course_Id;



-- 12. Display department-wise list of courses using DepartmentID.

 select d.Name,c.Course_Name
  from Department d inner join Course c 
  on d.Department_Id=c.Department_Id;



-- 13. Display faculty Name along with department name they belong to.

select f.Name as facultyName,d.Name as DepartmentName
  from Department d inner join Faculty f 
  on d.Department_Id=f.Department_Id;


