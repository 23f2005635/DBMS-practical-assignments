CREATE TABLE Department (
        Department_Id CHAR(4) PRIMARY KEY,
        Name VARCHAR2(50) NOT NULL,
        Office_Location VARCHAR2(100)
    );
/*
DESC Department;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 DEPARTMENT_ID                             NOT NULL NUMBER
 NAME                                      NOT NULL VARCHAR2(50)
 OFFICE_LOCATION                                    VARCHAR2(100)
*/


CREATE TABLE Faculty (
    Faculty_Id CHAR(4) PRIMARY KEY,
    Name VARCHAR2(50) NOT NULL,
    Email VARCHAR2(100) UNIQUE,
    Designation VARCHAR2(50),
    Department_Id CHAR(4),
    CONSTRAINT fk_faculty_dept
        FOREIGN KEY (Department_Id)
        REFERENCES Department(Department_Id)
);
/*
 DESC Faculty
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 FACULTY_ID                                NOT NULL NUMBER
 NAME                                      NOT NULL VARCHAR2(50)
 EMAIL                                              VARCHAR2(100)
 DESIGNATION                                        VARCHAR2(50)
 DEPARTMENT_ID                                      NUMBER
*/


CREATE TABLE Course (
    Course_Id CHAR(4) PRIMARY KEY,
    Course_Name VARCHAR2(100) NOT NULL,
    Credits NUMBER,
    Department_Id CHAR(4),
    Faculty_Id CHAR(4),
    CONSTRAINT fk_course_dept
        FOREIGN KEY (Department_Id)
        REFERENCES Department(Department_Id),
    CONSTRAINT fk_course_faculty
        FOREIGN KEY (Faculty_Id)
        REFERENCES Faculty(Faculty_Id)
);
/*
 DESC Course
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 COURSE_ID                                 NOT NULL NUMBER
 COURSE_NAME                               NOT NULL VARCHAR2(100)
 CREDITS                                            NUMBER
 DEPARTMENT_ID                                      NUMBER

*/


/*
DESC Student
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 NAME                                      NOT NULL VARCHAR2(50)
 GENDER                                             VARCHAR2(10)
 DATE_OF_BIRTH                                      DATE
 CONTACT_NUMBER                                     VARCHAR2(15)
*/

CREATE TABLE Enrollment (
    Entrollment_Id char(4),
    Grade char(1),
    Student_Id CHAR(11),
    Course_Id CHAR(4),
    Semester VARCHAR2(20),
    CONSTRAINT pk_enrollment PRIMARY KEY (Student_Id, Course_Id),
    CONSTRAINT fk_enroll_student
        FOREIGN KEY (Student_Id)
        REFERENCES Student(Student_Id),
    CONSTRAINT fk_enroll_course
        FOREIGN KEY (Course_Id)
        REFERENCES Course(Course_Id)
);

/*
DESC Enrollment
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STUDENT_ID                                NOT NULL NUMBER
 COURSE_ID                                 NOT NULL NUMBER
 SEMESTER                                           VARCHAR2(20)
*/

