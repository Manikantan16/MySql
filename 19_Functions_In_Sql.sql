-- 9.2 - get the Uppercase of Column in table
SELECT Employee_Id,UPPER(first_name) as First_Name,Upper(last_name) as Last_Name ,LENGTH(first_name ) as FName_Length
FROM employee_demographics
order by Employee_Id;

-- 9.3 - get the lower of Column in table
SELECT Employee_Id,lower(first_name) as First_Name,lower(last_name) as Last_Name ,LENGTH(first_name ) as FName_Length
FROM employee_demographics
order by Employee_Id

-- 9.4 - TRIM
SELECT TRIM('sky'   );

-- 9.5 LTRIM
SELECT LTRIM('     I           love        MY-  SQL');

-- 9.6 RTRIM
SELECT RTRIM('I           love          SQL    ');

-- 9.10 Left
SELECT LEFT('Alexander', 4);

-- 9.11 Left
SELECT Employee_id,first_name, LEFT(first_name,4) as LEFT_FirstName
FROM employee_demographics
limit 5;

-- 9.12 right
SELECT Employee_id,first_name, right(first_name,5) as right_FirstName
FROM employee_demographics
limit 5;

-- 9.13 Substring  gets the 3 character from the 2nd index
SELECT SUBSTRING('Alexander', 2, 3) as SubS;

-- 9.14
SELECT birth_date, SUBSTRING(birth_date,1,4) as birth_year,SUBSTRING(birth_date,6,2) as birth_month,SUBSTRING(birth_date,9,2) as birth_day
FROM employee_demographics;

-- 9.15
SELECT first_name, REPLACE(first_name,'a','z') as replaced_fname
FROM employee_demographics
order by employee_id desc
limit 5;

-- 9.16
SELECT LOCATE('e', 'Alexander') as Location_;

-- 9.17
SELECT first_name, locate('A',first_name) as locateindex_fname
FROM employee_demographics
order by employee_id desc
limit 5;

-- 9.19
#Now let's look at concatenate - it will combine the strings together
SELECT CONCAT('Alex', 'Freberg') as Concated_Name;

-- 9.20
Select distinct gender from employee_demographics

-- 9.21
Select Employee_Id,Gender,case gender when 'Male' then Concat('Mr. ',First_name,' ',Last_Name) else Concat('M/s. ',First_name,' ',Last_Name) end as Full_Name 
from employee_demographics

