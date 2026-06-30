create table Student (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(50), Age INT
);

CREATE TABLE Enrollment (
    Enroll_ID INT PRIMARY KEY,
    Student_ID INT,
    FOREIGN KEY (Student_ID) REFERENCES Student(Student_ID)
);

create table Employee(
    Emp_ID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);
CREATE TABLE Department (
    Dept_ID INT PRIMARY KEY,
    Dept_Name VARCHAR(50) NOT NULL
);
create table Marks (
    Student_ID INT,
    Subject_ID INT,
    Marks INT,
    PRIMARY KEY(Student_ID, Subject_ID)
);