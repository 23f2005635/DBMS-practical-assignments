-- 17. Display number of students enrolled in each course.
select c.Course_Name,count(s.Student_Id) as TotalStudent
  from Student s inner join Enrollment e on s.Student_Id=e.Student_Id
  inner join Course c on e.Course_Id=c.Course_Id
  group by c.Course_Name;



-- 18. Display number of courses taught by each faculty member.

select f.Name,count(c.Course_Name) as TotalCourse
  from Faculty f inner join Course c on c.Faculty_Id=f.Faculty_Id
  group by f.Name;



-- 19. Display department-wise count of students.

 select d.Name as DepartmentName,count(s.Name) as TotalStudent
  from Department d inner join Student s on d.Department_Id=s.Department_Id
  group by d.Name;

-- 20. Display course name along with maximum grade awarded in that course.
SELECT c.Course_Name,
       CASE MAX(
            CASE e.Grade
                WHEN 'A+' THEN 4
                WHEN 'A'  THEN 3
                WHEN 'B'  THEN 2
                WHEN 'C'  THEN 1
            END)
            WHEN 4 THEN 'A+'
            WHEN 3 THEN 'A'
            WHEN 2 THEN 'B'
            WHEN 1 THEN 'C'
       END AS Max_Grade
FROM Course c
JOIN Enrollment e
ON c.Course_Id = e.Course_Id
GROUP BY c.Course_Name;