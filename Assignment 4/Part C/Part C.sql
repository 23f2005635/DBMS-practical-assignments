-- 13. Display student records sorted by Name in Ascending order.

select *
  from Student
  order by Name Asc;

-- 14. Display student records sorted by DOB in descending order.

select *
  from Student
  order by Date_of_Birth Desc;


-- 15. Display faculty records sorted by Designation in ascending order.

select *
  from Faculty
  order by Designation Asc;


-- 16. Display courses sorted by Credits in descending order.

select *
  from Course
  order by Credits Desc;


-- 17. Display only the first 3 student records.

select *
  from Student
  Fetch first 3 Rows only;


-- 18. Display only the first 5 course records.

select *
  from Course
  Fetch first 5 Rows only;

  
