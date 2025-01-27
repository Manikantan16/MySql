-- 1.1 Create EmployeeDemographics Table with Auto Increment 
CREATE TABLE Employee_Demographics (
  Employee_Id INT NOT NULL AUTO_INCREMENT,
  First_Name VARCHAR(50),
  Last_Name VARCHAR(50),
  Age INT,
  Gender VARCHAR(10),
  Birth_Date DATE,
  PRIMARY KEY (Employee_Id)
);

-- 1.2 Set the Auto Increment Value to the Primary Key Column
ALTER TABLE Employee_Demographics AUTO_INCREMENT=5001;