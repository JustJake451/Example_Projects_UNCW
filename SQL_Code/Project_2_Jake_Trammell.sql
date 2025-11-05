-- Show databases in current schema
SHOW databases;
-- Drop database from project one
DROP DATABASE IF EXISTS demo_jake;
-- Create a database
CREATE DATABASE jaketrammell;
-- use database
USE jaketrammell;
-- Create Table called staff with information
CREATE TABLE `jaketrammell`.`staff` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(60) NOT NULL,
  `LastName` VARCHAR(60) NOT NULL,
  `JobTitle` VARCHAR(100) NULL DEFAULT 'TBA',
  `DateHired` DATE NULL,
  `Salary` DECIMAL(10,2) UNSIGNED NULL,
  `ReportsTo` INT UNSIGNED NULL,
  `OfficeID` INT NULL DEFAULT 999,
  PRIMARY KEY (`ID`));
  -- Insert original records into table
INSERT INTO `jaketrammell`.`staff` (`ID`, `FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('1', 'Rwanda', 'Adam', 'Sales Specialist', '1987-01-01', '1000.00', '2', '1001');
INSERT INTO `jaketrammell`.`staff` (`FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('Sam', 'Tony', 'Sales Manager', '1980-06-07', '2000.00', '3', '1002');
INSERT INTO `jaketrammell`.`staff` (`FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('Rodriguez', 'Lee', 'Sales Director', '2011-08-09', '123456.33', '911', '1003');
INSERT INTO `jaketrammell`.`staff` (`ID`, `FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`) VALUES ('911', 'Maria', 'King', 'CEO', '2020-12-15', '5678900.89');
-- Display all records from staff table
SELECT *
FROM staff;
-- Task a
-- a1. Delete all records from table staff
DELETE FROM staff;
SELECT *
FROM staff;
-- a2. Insert original records into staff
INSERT INTO `jaketrammell`.`staff` (`ID`, `FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('1', 'Rwanda', 'Adam', 'Sales Specialist', '1987-01-01', '1000.00', '2', '1001');
INSERT INTO `jaketrammell`.`staff` (`FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('Sam', 'Tony', 'Sales Manager', '1980-06-07', '2000.00', '3', '1002');
INSERT INTO `jaketrammell`.`staff` (`FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('Rodriguez', 'Lee', 'Sales Director', '2011-08-09', '123456.33', '911', '1003');
INSERT INTO `jaketrammell`.`staff` (`ID`, `FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`) VALUES ('911', 'Maria', 'King', 'CEO', '2020-12-15', '5678900.89');
-- a3. Display records in table staff
SELECT * 
FROM staff;
-- Task b
-- b1. Use truncate to remove all records from table
Name`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('Rodriguez', 'Lee', 'Sales Director', '2011-08-09', '123456.33', '911', '1003');
INSERT INTO `jaketrammell`.`staff` (`ID`, `FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`) VALUES ('911', 'Maria', 'King', 'CEO', '2020-12-15', '5678900.89');
-- b3. Display records
SELECT * 
FROM staff;TRUNCATE TABLE staff;
SELECT * 
FROM staff;
-- b2. Insert records back into table
INSERT INTO `jaketrammell`.`staff` (`ID`, `FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('1', 'Rwanda', 'Adam', 'Sales Specialist', '1987-01-01', '1000.00', '2', '1001');
INSERT INTO `jaketrammell`.`staff` (`FirstName`, `LastName`, `JobTitle`, `DateHired`, `Salary`, `ReportsTo`, `OfficeID`) VALUES ('Sam', 'Tony', 'Sales Manager', '1980-06-07', '2000.00', '3', '1002');
INSERT INTO `jaketrammell`.`staff` (`First
/* The "DELETE" statement still has rows that remain meaning it deletes an exact number of rows.
Meanwhile "TRUNCATE" function completely empties the table. 
Additionally, the auto increment for the "DELETE" statement does not reset, however it does 
reset for the "TRUNCATE" function.
*/
-- Add BirthDate column to the table
ALTER TABLE staff
ADD BirthDate Date;
SELECT *
FROM staff;
-- Change Salary column datatype
ALTER TABLE staff
CHANGE Salary Salary DECIMAL(12,2);
SELECT *
FROM staff;