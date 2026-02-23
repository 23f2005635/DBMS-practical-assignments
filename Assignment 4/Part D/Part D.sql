-- 19. Display student Name along with their calculated Age using DOB.

select Name ,
TRUNC(MONTHS_BETWEEN(SYSDATE,Date_of_Birth)/12) as Age
  from Student;


-- 20. Display course CourseName along with Credits + 1 as Updated_Credits

select Course_Name,
  Credits,
  Credits+1 as New_Credit
  from Course;


-- 21. Display enrollment details with column Grade shown as Final_Grade.

select Entrollment_Id,Student_Id,
Course_Id,Semester,
Grade as Final_Grade
from Enrollment;


-- 22. Display student Name along with year of birth extracted from DOB

select Name , EXTRACT(YEAR from Date_of_Birth) as Year_of_Birth from Student;


-- 23. Display faculty Name along with email domain extracted from Email.

SELECT Name,
  SUBSTR(Email, INSTR(Email, '@') + 1) AS Domain
  FROM Faculty;