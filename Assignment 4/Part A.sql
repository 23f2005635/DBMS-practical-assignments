select Student_Id as registration_num,
    Name as Student_name,
     Gender as Sex ,
    Date_of_birth as Dob,
    Contact_Number as Num,
    Department_Id as Dep_Id
    from Student;


select Student_Id as Roll_No,
  2   Name as Student_Name,
  3  Department_Id as Dept_ID
  4  from Student;



select Faculty_ID,Name,Designation,Email from Faculty;


select Course_Id as c_id , Course_Name as c_name, Credits as Crd, Department_id as dept_id, Faculty_Id as f_id from Course;

select Entrollment_Id as eid, Grade as grd,Student_Id as st_id,Course_Id as cid,Semester as sem from Enrollment;