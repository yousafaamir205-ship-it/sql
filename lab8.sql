CREATE TABLE Employee(
EmpID INT PRIMARY KEY,
EmpName VARCHAR(50),
Salary DECIMAL(10,2)
);
INSERT INTO Employee VALUES(1,'Ayesha',60000);
UPDATE Employee SET Salary=65000 WHERE EmpID=1;
DELETE FROM Employee WHERE EmpID=1;

CREATE DATABASE student;
DROP DATABASE student;
CREATE TABLE std(
Registration_num VARCHAR(10) NOT NULL,
name VARCHAR(25),
email VARCHAR(50),
address VARCHAR(100),
phone VARCHAR(10),
CONSTRAINT PK_std PRIMARY KEY(Registration_num)
);
CREATE TABLE testTable(
 test_id INT,
Name VARCHAR(225)
);
EXEC sp_rename 'testTable','testTable2';
ALTER TABLE testTable2 ADD dob SMALLINT;
ALTER TABLE testTable2 DROP COLUMN dob;
UPDATE profile_info
SET first_name='Kim',
last_name='Ralls',
city='Lahore',
StateProvinceCode='WAA',
id=21,
PostalCode='60700'
WHERE id=10;
DELETE FROM profile_info WHERE city='Redmond';
CREATE TABLE Student(
SAP_id INT NOT NULL,
firstName VARCHAR(50) NOT NULL,
lastName VARCHAR(50) NOT NULL,
contact_number VARCHAR(15) NULL
);
SELECT first_name,last_name,city FROM profile_info;
SELECT COUNT(*) AS total_count
FROM profile_info
WHERE city='Lahore';
SELECT DISTINCT city FROM profile_info;
GRANT SELECT ON Customer TO user1;
GRANT INSERT,UPDATE ON Customer TO user2;
GRANT ALL ON Customer TO admin_user;

REVOKE UPDATE ON Customer FROM user2;
REVOKE ALL ON Customer FROM admin_user;
GRANT DELETE ON Customer TO manager1;

GRANT SELECT ON Customer TO userA;
GRANT SELECT ON Customer TO userB;
REVOKE SELECT ON Customer FROM userA;

REVOKE SELECT ON Customer FROM userB;