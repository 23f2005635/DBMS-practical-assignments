SQL> select Name
    from Student
    where Department_Id = (select Department_Id
   from Student
    where Student_Id=23157128013);

-- NAME
-- --------------------------------------------------
-- Simran Kumari
-- Harshit Kumar
-- Nasir Iqbal
-- Nishant Kumar
-- Shalini Shreya
-- Faizan
-- Rajeev
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar

-- 10 rows selected.

SQL> select Name
    from Student
    where Gender = (
    select Gender
    from Student
    where Student_Id=23157128001);

-- NAME
-- --------------------------------------------------
-- Simran Kumari
-- Shalini Shreya

SQL> select Name
  2  from Student
  3  where Department_Id = (select Department_Id
  4  from Student
  5  where Student_Id=23157128013);

-- NAME
-- --------------------------------------------------
-- Simran Kumari
-- Harshit Kumar
-- Nasir Iqbal
-- Nishant Kumar
-- Shalini Shreya
-- Faizan
-- Rajeev
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar

-- 10 rows selected.




-- ============== part b ====================
SQL> select Name
  2  from Student
  3  where Department_Id in (
  4  select Department_Id
  5  from Student
  6  where Gender='Female') and Gender='Female';

-- NAME
-- --------------------------------------------------
-- Simran Kumari
-- Shalini Shreya

SQL> select Name
  2  from Student
  3  where Student_Id in (select Student_Id
  4  from Enrollment);

-- NAME
-- --------------------------------------------------
-- Shalini Shreya
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar

SQL> select Name
  2  from Student
  3  where Student_Id in (select Student_Id
  4  from Enrollment);

-- NAME
-- --------------------------------------------------
-- Shalini Shreya
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar


-- ========== part c========================================

SQL> select Course_Name from Course
  2  where Credits >(select avg(Credits)
  3  from Course);

-- COURSE_NAME
-- -----------------------------------------------
-- Artificial Intelligence
-- Machine Learning
-- Design and analysis of Algorithm

SQL> select Name
  2  from Student
  3  where Student_Id>(select avg(Student_Id)
  4  from Student);

-- NAME
-- --------------------------------------
-- Faizan
-- Rajeev
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar
 

-- ============== Part D ===============================


SQL> select Name
  2  from Student
  3  where Student_Id in(Select Student_Id
  4  from Enrollment);

-- NAME
-- --------------------------------------------------
-- Shalini Shreya
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar

SQL> select Name
  2  from Student
  3  where Department_Id in (
  4  select department_Id
  5  from Department);

-- NAME
-- ---------------------------------------
-- Simran Kumari
-- Harshit Kumar
-- Nasir Iqbal
-- Nishant Kumar
-- Shalini Shreya
-- Faizan
-- Rajeev
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar

-- 10 rows selected.

SQL> select Course_Name
  2  from Course
  3  where Course_Id in (
  4  select Course_Id from Enrollment);

-- COURSE_NAME
-- ------------------------------------------
-- Data Structure and Algorithm
-- Design and analysis of Algorithm
-- Database Management System
-- Digital Electronics
-- Basic Electrical Engineering



-- ================ part E ======================================



SQL> select Course_Name
  2  from Course
  3  where Credits =(select max(Credits)
  4  from Course);

COURSE_NAME
---------------------------------------
Machine Learning




SQL> select Student_Id
  2  from Enrollment
  3  group by Student_Id
  4  having count(Student_Id)>1;

-- STUDENT_ID
-- -----------
-- 23157128011
-- 23157128013




 select Name
  2      from Department
  3      where Department_Id in (
  4      select Department_Id
  5      from Student
  6      group by Department_Id
  7      having count(Department_Id)=(select max(cnt)
  8      from (Select count(*) as cnt
  9      from Student
 10     group by Department_id)
 11  )
 12  );

-- NAME
-- -------------------------------------------
-- Artificial Intelligence and Machine Learning







-- =================== Part F ========================================


SQL> select Name
  2  from Student
  3  where Student_Id in (
  4  select Student_Id
  5  from Enrollment
  6  where Course_Id in(
  7  select Course_Id
  8  from Enrollment
  9  where Student_Id=23157128013)
 10  );

-- NAME
-- ------------------------------
-- Shalini Shreya
-- Navin Kumar
-- Arman Kumar
-- Prince Kumar

SQL>
SQL> select Name
  2  from Student
  3  where Student_Id not in (select Student_Id
  4  from Enrollment);

-- NAME
-- --------------------------------
-- Harshit Kumar
-- Faizan
-- Rajeev
-- Simran Kumari
-- Nishant Kumar
-- Nasir Iqbal

6 rows selected.

SQL> select Course_Name
  2  from Course
  3  where Course_Id not in (
  4  select Course_Id
  5  from Enrollment);

-- COURSE_NAME
-- -----------------------------------
-- Artificial Intelligence
-- Machine Learning
-- Engineering Graphic
-- Computer Network
-- C Programming
