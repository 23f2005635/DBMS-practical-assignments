
SQL>  select COUNT(*) as Total_Student from Student;

TOTAL_STUDENT
-------------
10

SQL> select count(*) as total_faculty from Faculty;

TOTAL_FACULTY
-------------
11

SQL> select count(*) as total_course
  2     from Course;

TOTAL_COURSE
------------
 10

SQL> select max(Credits) as max_credits
  2     from Course;

MAX_CREDITS
-----------
6

SQL>    select min(Credits) as min_credits
  2    from Course;

MIN_CREDITS
-----------
1

SQL>   select count(*) as total_student ,Department_Id
  2    from Student
  3    group by Department_Id;

TOTAL_STUDENT DEPA
------------- ----
           10 AI01

SQL>   select count(*) as total_faculty , Department_Id
  2    from Faculty
  3    group by Department_Id;

TOTAL_FACULTY DEPA
------------- ----
2 CE01
1 CE02
1 ME01
1 EE01
2 CS01
4 AI01

6 rows selected.

SQL>   select count(distinct(Course_Name)) as total_course , Department_Id
  2    from Course
  3    group by Department_Id;

TOTAL_COURSE DEPA
------------ ----
6 AI01
2 CS01
1 EE01
1 ME01

SQL> select count(*) , Semester from Enrollment group by Semester;

  COUNT(*) SEMESTER
--------- --------------------
    3       5th
    4       4th
    3       3rd

SQL>
SQL> select count(*) , Grade from Enrollment group by Grade;

  COUNT(*) GR
---------- --
         5 A+
         2 A
         2 B
         1 C

SQL>
SQL> select Department_Id from Student
  2    group by Department_Id
  3    having count(Department_Id)>3;

DEPA
----
AI01

SQL>
SQL> select semester,count(Entrollment_Id) as total_enrollment
  2    from Enrollment
  3    group by Semester
  4    having count(Entrollment_Id)>2;

SEMESTER             TOTAL_ENROLLMENT
-------------------- ----------------
5th                                 3
4th                                 4
3rd                                 3

SQL>
SQL> select Grade ,count(Entrollment_Id) from Enrollment
  2    group by (Grade)
  3    having count(Entrollment_Id)>1;

GR COUNT(ENTROLLMENT_ID)
-- ---------------------
A+                     5
A                      2
B                      2

SQL>
SQL> select Department_Id , count(Course_Id)
  2    from Course
  3    group by Department_Id
  4    having count(Course_Id)>1;

DEPA COUNT(COURSE_ID)
---- ----------------
AI01                6
CS01                2

SQL>
SQL> select Course_Id , count(Entrollment_Id)
  2    from Enrollment
  3    group by Course_Id;

COUR COUNT(ENTROLLMENT_ID)
---- ---------------------
DBMS                     2
DE                       2
DAA                      3
BEE                      1
DSA                      2

SQL>
SQL> select c.Course_Name, count(e.Entrollment_Id)
  2    from Enrollment e inner join Course c on e.Course_Id=c.Course_Id
  3    group by c.Course_Name;

COURSE_NAME
--------------------------------------------------------------------------------
COUNT(E.ENTROLLMENT_ID)
-----------------------
Database Management System
                      2

Data Structure and Algorithm
                      2

Digital Electronics
                      2


COURSE_NAME
--------------------------------------------------------------------------------
COUNT(E.ENTROLLMENT_ID)
-----------------------
Basic Electrical Engineering
                      1

Design and analysis of Algorithm
                      3


SQL>
SQL> select d.Department_Id , count(s.Student_Id)
  2    from Department d left join Student s
  3    on d.Department_Id = s.Department_Id
  4    group by d.Department_Id;

DEPA COUNT(S.STUDENT_ID)
---- -------------------
3D01                   0
AI01                  10
AS01                   0
CE01                   0
CE02                   0
CS01                   0
CY01                   0
DS01                   0
EE01                   0
ME01                   0

10 rows selected.

SQL>
SQL> select f.Name,count(c.Course_Id)
  2    from Faculty f left join Course c on f.Faculty_id=c.Faculty_Id
  3    group by f.Name;

NAME                                               COUNT(C.COURSE_ID)
-------------------------------------------------- ------------------
Sujeet Kumar                                                        1
Md. Izhar                                                           2
Md. Ehteshamoul Hoque                                               1
Praveen Kumar                                                       2
Arun Kumar                                                          1
Hare Krishna Mishra                                                 1
Murlidhar Prasad Singh                                              1
Arbind Kumar Amar                                                   1
Nishikant Kumar                                                     0
Kunal Kumar                                                         0
Akhilesh Kumar                                                      0

11 rows selected.

SQL>
SQL> SELECT Course_Name,
  2         CASE max_grade
  3             WHEN 4 THEN 'A+'
  4             WHEN 3 THEN 'A'
  5             WHEN 2 THEN 'C'
  6             ELSE 'F'
  7         END AS grade
  8  FROM (
  9      SELECT c.Course_Name,
 10             MAX(
 11                 CASE e.Grade
 12                     WHEN 'A+' THEN 4
 13                     WHEN 'A'  THEN 3
 14                     WHEN 'C'  THEN 2
 15                     ELSE 0
 16                 END
 17             ) AS max_grade
 18      FROM Course c
 19      LEFT JOIN Enrollment e
 20      ON c.Course_Id = e.Course_Id
 21      GROUP BY c.Course_Name
 22  );

COURSE_NAME
--------------------------------------------------------------------------------
GR
--
Database Management System
A+

Digital Electronics
A+

Design and analysis of Algorithm
A+


COURSE_NAME
--------------------------------------------------------------------------------
GR
--
Basic Electrical Engineering
F

Data Structure and Algorithm
A+

Artificial Intelligence
F


COURSE_NAME
--------------------------------------------------------------------------------
GR
--
Machine Learning
F

Engineering Graphic
F

Computer Network
F


COURSE_NAME
--------------------------------------------------------------------------------
GR
--
C Programming
F


10 rows selected.

SQL> select d.Department_Id ,count(c.course_id)
  2    from Department d left join Course c
  3    on d.Department_id=c.Department_Id
  4    group by d.Department_Id;

DEPA COUNT(C.COURSE_ID)
---- ------------------
3D01                  0
AI01                  6
AS01                  0
CE01                  0
CE02                  0
CS01                  2
CY01                  0
DS01                  0
EE01                  1
ME01                  1

10 rows selected.

SQL>
SQL> select Semester,Count(Entrollment_Id)
  2    from Enrollment
  3    group by Semester;

SEMESTER             COUNT(ENTROLLMENT_ID)
-------------------- ---------------------
5th                                      3
4th                                      4
3rd                                      3

SQL>
SQL> select Course_Id ,count(Entrollment_Id)
  2    from Enrollment
  3    group by Course_Id
  4    having count(Entrollment_Id)>2;

COUR COUNT(ENTROLLMENT_ID)
---- ---------------------
DAA                      3
