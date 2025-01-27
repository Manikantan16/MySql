Use MyDb;
-- 1.8 Create table 
CREATE TABLE Parks_Departments (
  Dept_Id INT NOT NULL AUTO_INCREMENT,
  Dept_Name varchar(50) NOT NULL,
  PRIMARY KEY (Dept_Id)
);
-- 1.9 Insert Statement
insert into Parks_Departments(Dept_Name)
values
('Parks and Recreation'),
('Animal Control'),
('Human Resource'),
('Public Works'),
('Healthcare'),
('Library'),
('Finance'),
('IT & Programming');

-- 1.10 Insert Statement
Select * from Parks_Departments;