-- 6. Display all students whose DepartmentID is 'AI01'.

select *
    from Student
    where Department_Id='AI01';


-- 7. Display all students whose Gender is 'Female'.

select *
  from Student
  where Gender='Female';



-- 8. Display faculty members whose Designation is 'Assistant Professor'.

select *
  from Faculty
  where Designation='Assistant Professor';

--9. Display faculty members whose DepartmentID is 'CE01'.

select *
  from Faculty
  where Department_Id='CE01';



-- 10. Display courses whose Credits are greater than or equal to 2.

select *
  from Course
  where Credits>=2;



-- 11. Display students born after 2003-01-01 using the DOB column.

select * from Student
  where Date_of_Birth > DATE'2003-01-01';


-- 12. Display enrollment records for students enrolled in Semester 4.

select *
  from Enrollment
  where Semester = '4th';



  