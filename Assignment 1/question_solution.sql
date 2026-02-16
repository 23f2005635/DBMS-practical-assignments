--# Part A: DDL (Structure / Table Creation)

-- 3. Create a table Student with following columns:
--        ○ RollNo INT
--        ○ Name VARCHAR(50)
--        ○ Dept VARCHAR(20)
--        ○ Age INT
--        ○ Phone VARCHAR(15)

 CREATE TABLE Student(RollNo int,Name varchar(50),dept varchar(20), Age int,Phone varchar(15));

 
-- 4. Create a table Course with columns:
--        ○ CourseID INT
--        ○ CourseName VARCHAR(50)
--        ○ Credits INT

 CREATE TABLE COURSE(CourseID int,CourseName varchar(50),Credits int);

-- 5. Add a new column City in table Student.

 ALTER TABLE Student
 ADD City varchar(15);

-- 6. Add a new column Semester in table Student.

 ALTER TABLE Student
 ADD Semester int;


-- 7. Rename column Phone to MobileNo in table Student. (if supported in your DB)

 ALTER TABLE Student
 RENAME COLUMN Phone to MobileNo;

-- 8. Delete (drop) the table Course.

 DROP TABLE Course;

--  # Part B: DML (Insert / Update / Delete / View Data)

-- 9. Insert 5 student records into Student.

 INSERT INTO Student
 VALUES(101,'Prince','CSE',21,7258,'Patna',5);
 INSERT INTO Student
 VALUES(102,'Navin','ECE',22,5632,'Supaul',5);
 INSERT INTO Student
 VALUES(103,'Rahul','CSE',22,258963,'Patna',5);
 INSERT INTO Student
 VALUES(104,'Arman','MECH',22,895614,'Banka',5);
 INSERT INTO Student
 VALUES(105,'Ankit','MECH',23,587469,'Saharsa',6);

-- 10. Display all records from Student.

  select * from Student;

--11. Display only RollNo and Name from Student.

 select RollNO,Name from Student;

--12. Display all students from department "CSE".

 select * from Student where dept='CSE';

--13. Display all students whose age is greater than 20.

 select * from Student where Age>20;

--14. Update the department of RollNo = 101 to "ECE".

 UPDATE Student
 SET dept='ECE'
 WHERE RollNo=101;

--15. Update the city of student "Rahul" to "Patna".
 UPDATE Student
 SET City='Patna'
 WHERE Name='Rahul';

--16. Increase age of all students by 1 year.

 UPDATE Student
 SET Age=Age+1;

--17. Delete record of student whose RollNo = 105.

 DELETE from Student
 where RollNo=105;

--18. Delete all records from Student (table should remain).

 TRUNCATE TABLE Student;

