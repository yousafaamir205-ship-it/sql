CREATE TABLE Students (
    StudentID   INT PRIMARY KEY,
    FirstName   VARCHAR(50) NOT NULL,
    LastName    VARCHAR(50) NOT NULL,
    Email       VARCHAR(100),
    Phone       VARCHAR(15),
    DateOfBirth DATE
);
INSERT INTO Students (StudentID, FirstName, LastName, Email, Phone, DateOfBirth)
VALUES (1, 'Ali', 'Hassan', 'ali@example.com', '03001234567', '2002-05-10');
INSERT INTO Students (StudentID, FirstName, LastName, Email, Phone, DateOfBirth)
VALUES (2, 'Sara', 'Khan', 'sara@example.com', '03009876543', '2001-08-22');
SELECT * FROM Students;
 
SELECT StudentID, FirstName, LastName, Email
FROM Students
WHERE StudentID = 1;
 
UPDATE Students
SET Phone = '03111111111',
    Email = 'ali.updated@example.com'
WHERE StudentID = 1;
DELETE FROM Students
WHERE StudentID = 2;
SELECT * FROM Students;
GRANT SELECT, INSERT ON Students TO user1;
GRANT UPDATE, DELETE ON Students TO user1;
REVOKE DELETE ON Students FROM user1;