-- Create the database
CREATE SCHEMA `demo_jake`;
-- Create the database
CREATE TABLE `demo_jake`.`employee` (
  `ID` INT NOT NULL,
  `Name` VARCHAR(60) NULL,
  `DateHired` DATE NULL,
  `Salary` DECIMAL(10,2) NULL,
  PRIMARY KEY (`ID`));
-- Insert main information into database
INSERT INTO `demo_jake`.`employee` (`ID`, `Name`, `DateHired`, `Salary`) VALUES ('219', 'Rwanda', '1987-01-01', '1000');
INSERT INTO `demo_jake`.`employee` (`ID`, `Name`, `DateHired`, `Salary`) VALUES ('318', 'Sam', '1980-06-07', '2000');
INSERT INTO `demo_jake`.`employee` (`ID`, `Name`, `DateHired`, `Salary`) VALUES ('427', 'Rodriguez', '2011-08-09', '123456.33');
INSERT INTO `demo_jake`.`employee` (`ID`, `Name`, `DateHired`, `Salary`) VALUES ('789', 'Maria', '2020-12-15', '5678900.89');
-- Change Rwanda's name to Adam
UPDATE demo_jake.employee SET Name= 'Adam' WHERE Name = 'Rwanda';
-- Change Sam's salary
UPDATE demo_jake.employee SET Salary = 4500.12 where Name = 'Sam';
-- Change Rodriguez's datehired 
UPDATE demo_jake.employee SET DateHired = '2019-08-20' where Name = 'Rodriguez';
-- Change Maria's ID
UPDATE demo_jake.employee SET ID = 1001 where Name = 'Maria';
-- List ID and Name of records whose salary is greater than or eqal to 2000
SELECT ID,Name from demo_jake.employee
WHERE Salary >= 2000;
