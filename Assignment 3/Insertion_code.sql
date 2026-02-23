/* Table Creation in Assignment 2 */

INSERT INTO Department VALUES ('CE01', 'Civil Engineering', 'Block-A');

INSERT INTO Department VALUES ('CE02', 'Civil Engineering with computer', 'Block-A');

INSERT INTO Department VALUES ('ME01', 'Mechanical Engineering', 'Block-B');

INSERT INTO Department VALUES ('EE01', 'Electrical and electronics Engineering', 'Block-C');

INSERT INTO Department VALUES ('CS01', 'Computer Science Engineering', 'Block-C');

INSERT INTO Department VALUES ('AI01', 'Artificial Intelligence and Machine Learning', 'Block-D');

INSERT INTO Department VALUES ('3D01', '3D Animation and Graphics', 'Block-E');

INSERT INTO Department VALUES ('AS01', 'Applied Science', 'Block-F');

INSERT INTO Department VALUES ('DS01', 'Data Science', 'Block-G');

INSERT INTO Department VALUES ('CY01', 'Cyber Security', 'Block-G');




INSERT INTO Faculty VALUES ('CEF1', 'Akhilesh Kumar', 'akhileshkumar3804@gmail.com', 'Assistant Professor','CE01');

INSERT INTO Faculty VALUES ('CEF2', 'Kunal Kumar', 'kunal1989kumar@gmail.com', 'Assistant Professor','CE01');

INSERT INTO Faculty VALUES ('CEF3', 'Nishikant Kumar', 'nishikantbpmce32@gmail.com', 'Assistant Professor','CE02');

INSERT INTO Faculty VALUES ('MEF1', 'Arbind Kumar Amar', 'ak_amar73@yahoo.com', 'Associate Professor, Principal-in-charge','ME01');

INSERT INTO Faculty VALUES ('EEF1', 'Hare Krishna Mishra', 'hare.dbit@gmail.com', 'Assistant Professor','EE01');

INSERT INTO Faculty VALUES ('CSF1', 'Murlidhar Prasad Singh', 'singhmurlidhar@gmail.com', 'Assistant Professor','CS01');

INSERT INTO Faculty VALUES ('CSF2', 'Arun Kumar', 'arunkr75@gmail.com', 'Assistant Professor','CS01');

INSERT INTO Faculty VALUES ('AIF1', 'Sujeet Kumar', 'ksujeet.cs@gmail.com', 'Assistant Professor','AI01');

INSERT INTO Faculty VALUES ('AIF2', 'Praveen Kumar', 'praveenkumaryadav782@gmail.com', 'Assistant Professor','AI01');

INSERT INTO Faculty VALUES ('AIF3', 'Md. Ehteshamoul Hoque', 'ehtasham47@gmail.com', 'Assistant Professor','AI01');

INSERT INTO Faculty VALUES ('AIF4', 'Md. Izhar', 'mdizhar1996@gmail.com', 'Assistant Professor','AI01');





INSERT INTO Course VALUES ('DBMS', 'Database Management System', 3, 'AI01','AIF1');

INSERT INTO Course VALUES ('CN', 'Computer Network', 2, 'AI01','AIF4');

INSERT INTO Course VALUES ('AI', 'Artificial Intelligence', 4, 'AI01','AIF3');

INSERT INTO Course VALUES ('ML', 'Machine Learning', 6, 'AI01','AIF2');

INSERT INTO Course VALUES ('DSA', 'Data Structure and Algorithm', 3, 'AI01','AIF2');

INSERT INTO Course VALUES ('DE', 'Digital Electronics', 3, 'CS01','CSF2');

INSERT INTO Course VALUES ('BEE', 'Basic Electrical Engineering', 2, 'EE01','EEF1');

INSERT INTO Course VALUES ('DAA', 'Design and analysis of Algorithm', 5, 'AI01','AIF4');

INSERT INTO Course VALUES ('CP', 'C Programming', 3, 'CS01','CSF1');

INSERT INTO Course VALUES ('EGD', 'Engineering Graphic', 1, 'ME01','MEF1');





INSERT INTO Student VALUES ('23157128001', 'Simran Kumari','Female',TO_DATE('11/08/2000','DD-MM-YYYY'), '9709632502','AI01');

INSERT INTO Student VALUES ('23157128002', 'Harshit Kumar','Male',TO_DATE('12/08/2003','DD-MM-YYYY'), '9706932502','AI01');

INSERT INTO Student VALUES ('23157128004', 'Nasir Iqbal','Male',TO_DATE('13/08/2002','DD-MM-YYYY'), '9706392502','AI01');

INSERT INTO Student VALUES ('23157128005', 'Nishant Kumar','Male',TO_DATE('13/08/2001','DD-MM-YYYY'), '9760932502','AI01');

INSERT INTO Student VALUES ('23157128007', 'Shalini Shreya','Female',TO_DATE('14/08/2006','DD-MM-YYYY'), '9706923502','AI01');

INSERT INTO Student VALUES ('23157128008', 'Faizan','Male',TO_DATE('15/08/2003','DD-MM-YYYY'), '9706923502','AI01');

INSERT INTO Student VALUES ('23157128010', 'Rajeev','Male',TO_DATE('16/08/2008','DD-MM-YYYY'), '9760932502','AI01');

INSERT INTO Student VALUES ('23157128011', 'Navin Kumar','Male',TO_DATE('17/08/1999','DD-MM-YYYY'), '9706239502','AI01');

INSERT INTO Student VALUES ('23157128012', 'Arman Kumar','Male',TO_DATE('18/08/2001','DD-MM-YYYY'), '9706932520','AI01');

INSERT INTO Student VALUES ('23157128013', 'Prince Kumar','Male',TO_DATE('14/08/2004','DD-MM-YYYY'), '7257874494','AI01');





INSERT INTO Enrollment VALUES ('ED01', 'A+','23157128013','DBMS','5th');

INSERT INTO Enrollment VALUES ('ED02', 'A','23157128011','DBMS','5th');

INSERT INTO Enrollment VALUES ('ED03', 'A+','23157128011','DE','4th');

INSERT INTO Enrollment VALUES ('ED04', 'A','23157128013','DAA','4th');

INSERT INTO Enrollment VALUES ('ED05', 'B','23157128013','BEE','3rd');

INSERT INTO Enrollment VALUES ('ED06', 'C','23157128011','DAA','5th');

INSERT INTO Enrollment VALUES ('ED07', 'A+','23157128012','DAA','4th');

INSERT INTO Enrollment VALUES ('ED08', 'A+','23157128013','DE','4th');

INSERT INTO Enrollment VALUES ('ED09', 'A+','23157128013','DSA','3rd');

INSERT INTO Enrollment VALUES ('ED10', 'B','23157128007','DSA','3rd');









