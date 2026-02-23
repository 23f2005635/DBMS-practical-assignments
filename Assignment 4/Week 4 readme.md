## 🟢 Part A: Basic Data Display (Using Aliases)

This section focuses on:

Selecting all columns

Selecting specific columns

Using column aliases for better readability

Queries Included:

Display all columns from Student table using aliases.

Display StudentID, Name, DepartmentID as:

Roll_No

Student_Name

Dept_ID

Display FacultyID, Name, Designation, Email with readable names.

Display all columns from Course table with renamed headers.

Display all columns from Enrollment table using meaningful aliases.

## 🟡 Part B: Conditional Data Display (WHERE Clause)

This section demonstrates:

Filtering records using WHERE

Using comparison operators

Working with dates

Queries Included:

Students with DepartmentID = 'D101'

Students with Gender = 'Female'

Faculty with Designation = 'Assistant Professor'

Faculty with DepartmentID = 'D102'

Courses with Credits >= 4

Students born after 2003-01-01

Enrollment records for Semester 4

## 🔵 Part C: Sorting and Limiting Results

This section covers:

ORDER BY clause

Ascending and Descending sorting

Limiting results using LIMIT (or equivalent)

Queries Included:

Students sorted by Name (Ascending)

Students sorted by DOB (Descending)

Faculty sorted by Designation

Courses sorted by Credits (Descending)

First 3 student records

First 5 course records

## 🟣 Part D: Derived / Computed Output

This section focuses on:

Calculated columns

Using SQL functions

Extracting parts of data

Displaying computed values without modifying tables

Queries Included:

Student Name with calculated Age using DOB

CourseName with Credits + 1 as Updated_Credits

Enrollment details with Grade renamed as Final_Grade

Student Name with extracted Year of Birth

Faculty Name with extracted email domain

🛠 Technologies Used

SQL

Oracle / MySQL / PostgreSQL (compatible with minor syntax adjustments)