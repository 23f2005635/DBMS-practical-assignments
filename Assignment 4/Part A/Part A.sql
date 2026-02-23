
/*1. Display all columns from the Student table using suitable aliases for every column.*/

select Student_Id as registration_num,
    Name as Student_name,
     Gender as Sex ,
    Date_of_birth as Dob,
    Contact_Number as Num,
    Department_Id as Dep_Id
    from Student;


/*2. Display only StudentID, Name, and DepartmentID from the Student table, renaming them as Roll_No, Student_Name, and Dept_ID.*/

select Student_Id as Roll_No,
   Name as Student_Name,
  Department_Id as Dept_ID
  from Student;



-- 3. Display FacultyID, Name, Designation, and Email from the Faculty table using readable column names

select Faculty_ID,Name,Designation,Email from Faculty;



-- 4. Display all columns from the Course table with renamed column headers

select Course_Id as c_id ,
 Course_Name as c_name, 
 Credits as Crd, 
 Department_id as dept_id, 
 Faculty_Id as f_id 
 from Course;


-- 5. Display all columns from the Enrollment table with meaningful aliases.

select Entrollment_Id as eid,
 Grade as grd,
 Student_Id as st_id,
 Course_Id as cid,
 Semester as sem from Enrollment;