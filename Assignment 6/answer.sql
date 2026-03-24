--1. Display the total number of students in the Student table.

 select COUNT(*) as Total_Student from Student;
 
 
--2. Display the total number of faculty members in the Faculty table.

 select count(*) as total_faculty from Faculty;
 
 

--3. Display the total number of courses available in the Course table.

 select count(*) as total_course
   from Course;
   


--4. Display the maximum credits among all courses

 select max(Credits) as max_credits
   from Course;
   

-- 5. Display the minimum credits offered by any course.

select min(Credits) as min_credits
  from Course;
  
  
  
--  ================================== Part B ==========================


-- 6. Display the number of students in each DepartmentID from the Student table.

select count(*) as total_student ,Department_Id
  from Student
  group by Department_Id;
  


-- 7. Display the number of faculty members in each DepartmentID from the Faculty table.

select count(*) as total_faculty , Department_Id
  from Faculty
  group by Department_Id;
  


-- 8. Display the number of courses offered by each DepartmentID from the Course table.

select count(distinct(Course_Name)) as total_course , Department_Id
  from Course
  group by Department_Id;



-- 9. Display the number of enrollments in each Semester from the Enrollment table.

select count(*) , Semester from Enrollment group by Semester;



-- 10. Display the number of students for each Grade in the Enrollment table.

select count(*) , Grade from Enrollment group by Grade;


-- Part C: GROUP BY with HAVING ===================== Part C =========================



-- 11. Display departments having more than 3 students.

select Department_Id from Student
  group by Department_Id
  having count(Department_Id)>3;



-- 12. Display semesters where more than 2 enrollments exist.

 select semester,count(Entrollment_Id) as total_enrollment
  from Enrollment
  group by Semester
  having count(Entrollment_Id)>2;



-- 13. Display grades that are assigned to more than one student.

 select Grade ,count(Entrollment_Id) from Enrollment
  group by (Grade)
  having count(Entrollment_Id)>1;



-- 14. Display DepartmentIDs where more than one course is offered.

 select Department_Id , count(Course_Id)
  from Course
  group by Department_Id
  having count(Course_Id)>1;



-- Part D: Aggregation with JOIN ===================== Part D ======================



-- 15. Display the number of students enrolled in each CourseID.

select Course_Id , count(Entrollment_Id)
  from Enrollment
  group by Course_Id;



-- 16. Display CourseName and number of students enrolled in that course.
  
 select c.Course_Name, count(e.Entrollment_Id)
  from Enrollment e inner join Course c on e.Course_Id=c.Course_Id
  group by c.Course_Name;
  


  
-- 17. Display DepartmentID and number of students belonging to that department.

 select d.Department_Id , count(s.Student_Id)
  from Department d left join Student s
  on d.Department_Id = s.Department_Id
  group by d.Department_Id;



-- 18. Display Faculty Name and number of courses taught by each faculty member.

select f.Name,count(c.Course_Id)
  from Faculty f left join Course c on f.Faculty_id=c.Faculty_Id   
  group by f.Name;




-- Part E: Analytical Queries ======== Part E =================


-- 19. DisplayCourseName and maximum grade obtained in that course.

SELECT Course_Name,
       CASE max_grade
           WHEN 4 THEN 'A+'
           WHEN 3 THEN 'A'
           WHEN 2 THEN 'C'
           ELSE 'F'
       END AS grade
FROM (
    SELECT c.Course_Name,
           MAX(
               CASE e.Grade
                   WHEN 'A+' THEN 4
                   WHEN 'A'  THEN 3
                   WHEN 'C'  THEN 2
                   ELSE 0
               END
           ) AS max_grade
    FROM Course c 
    LEFT JOIN Enrollment e 
    ON c.Course_Id = e.Course_Id
    GROUP BY c.Course_Name
);





-- 20. Display DepartmentID and total number of courses offered in that department.

select d.Department_Id ,count(c.course_id)
  from Department d left join Course c
  on d.Department_id=c.Department_Id
  group by d.Department_Id;




-- 21. Display Semester and total number of students enrolled in that semester.

select Semester,Count(Entrollment_Id)
  from Enrollment
  group by Semester;


-- 22. Display courses that have more than 2 students enrolled


select Course_Id ,count(Entrollment_Id)
  from Enrollment
  group by Course_Id
  having count(Entrollment_Id)>2;


  


  
 

  
  
  

  
  




  

  

  
  

