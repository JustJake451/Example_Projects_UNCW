-- Use jaketrammell database
USE jaketrammell;
-- Drop tables if exists
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;
-- Create table Employee
CREATE TABLE `jaketrammell`.`employee` (
  `ID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(30) NOT NULL,
  `LastName` VARCHAR(30) NOT NULL,
  `JobTitle` VARCHAR(50) NULL DEFAULT 'TBA' ,
  `DateHired` DATE NULL,
  `Salary` DECIMAL(10,2) UNSIGNED NULL,
  `ReportsTo` INT UNSIGNED NULL,
  CONSTRAINT EmployeePK PRIMARY KEY (`ID`),
  CONSTRAINT SalaryCheck CHECK (Salary > 100));
-- Create a Table called Department
CREATE TABLE `jaketrammell`.`department` (
  `ID` INT UNSIGNED NOT NULL,
  `Name` VARCHAR(50) NOT NULL,
  `Location` VARCHAR(100) NULL DEFAULT 'TBA',
  PRIMARY KEY (`ID`),
  CONSTRAINT IDCheck CHECK (ID >= 1 AND ID <= 99));
-- Add a DepartmentID column to Employee and set as a foreign key 
ALTER TABLE Employee
	ADD COLUMN DepartmentID INT UNSIGNED NULL,
	ADD CONSTRAINT FK_Employee_DepartmentID
	FOREIGN KEY (DepartmentID) REFERENCES Department(ID)
    ON UPDATE CASCADE
    ON DELETE SET NULL;
-- a1. Insert Records into Department Table
INSERT INTO Department (ID, Name, Location) VALUES (1, 'Human Resources', 'Building 1');
INSERT INTO Department (ID, Name, Location) VALUES (2, 'Marketing', 'Building 2');
INSERT INTO Department (ID, Name, Location) VALUES (8, 'Production', 'Building 3');
INSERT INTO Department (ID, Name, Location) VALUES (9, 'Executive Office', NULL);
-- a2. Insert Records into Employee table
INSERT INTO Employee (FirstName, LastName, JobTitle, DateHired, Salary, ReportsTo, DepartmentID) VALUES ('Tony', 'Adam', 'Specialist', '1987-01-01', 1000.00, 2, 1);
INSERT INTO Employee (FirstName, LastName, JobTitle, DateHired, Salary, ReportsTo, DepartmentID) VALUES ('Sam', 'Tony', 'Manager', '1980-06-07', 2000.00, 3, 2);
INSERT INTO Employee (FirstName, LastName, JobTitle, DateHired, Salary, ReportsTo, DepartmentID) VALUES ('Rodriguez', 'Lee', 'Director', '2011-08-09', 123456.33, 4, 2);
INSERT INTO Employee (FirstName, LastName, JobTitle, DateHired, Salary, ReportsTo, DepartmentID) VALUES ('Maria', 'King', 'CEO', '2020-12-15', 5678900.89, NULL, 9);
-- Attempt to insert below records into Employee
-- INSERT INTO Employee (FirstName, LastName, JobTitle, DateHired, Salary, ReportsTo, DepartmentID) VALUES ('Tom', 'Justin', 'Specialist', '2021-02-01', 50.00, 2, 8);
/* The code returns "Check constraint 'SalaryCheck' is violated" meaning that 
the salary inputed for Tom Justin did not meet the constraint requirements. In this case
Tom's salary is below the 100.00 threshold that was set for the constraint.\*

/* When inserting data for the two tables, what's the message you will get if conducting step a2 before step a1? 
why does it happen? \*
/* You'll receive a foreign key constraint error because you are attempting to reference
the parent row that is yet to exist. Attempting to complete step a2 before a1, violates 
referential integretiy because they are neither fully null nor do they match any primary key values.\*
departmentSELECT *
FROM department;