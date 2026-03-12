-- 4. Display CourseName and Credits along with the Faculty Name who teaches the course.

select  c.Course_Name,c.Credits,f.Name
  from Course c inner join Faculty f
  on c.Faculty_Id=f.Faculty_Id;



-- 5. Display all courses taught by a faculty member whose FacultyID is 'AIF2'.

select c.Course_Name , f.Faculty_Id
  from Faculty f inner join Course c
  on f.Faculty_Id=c.Faculty_Id
  where f.Faculty_Id='AIF2';



-- 6. Display faculty Name and Designation along with the CourseName they teach.

select  f.Faculty_Id,f.Designation,c.Course_Name
  from Faculty f inner join Course c
  on f.Faculty_Id=c.Faculty_Id;