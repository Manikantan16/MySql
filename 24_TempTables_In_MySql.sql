-- 13 Temp Tables
-- 13.1 
CREATE TEMPORARY TABLE TempTbl_EmpDemographics
(Employee_Id int,
first_name varchar(50),
last_name varchar(50),
gender varchar(20)
);
-- if we execute this it gets created and we can actualyl query it.
SELECT * FROM TempTbl_EmpDemographics;
-- notice that if we refresh out tables it isn't there. It isn't an actual table. It's just a table in memory.

-- now obviously it's balnk so we would need to insert data into it like this:
INSERT INTO TempTbl_EmpDemographics
select Employee_Id,first_name,last_name,gender 
from Employee_Demographics;

Select * from TempTbl_EmpDemographics