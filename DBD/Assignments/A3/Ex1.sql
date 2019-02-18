USE [Company]

-- Ex A
-- Retrieve the names of all employees in department 5 who work more than 10 hours per week on the ProductX project.
SELECT *
	--E.SSN, E.Fname, E.Lname
FROM 
	Employee as E
	JOIN Works_on as W ON E.SSN = W.Essn
	JOIN Project as P ON W.Pno = P.PNumber
WHERE 
	E.Dno = 5
	AND W.Hours > 10
	AND P.PName = 'ProductX'


-- Ex B
-- List the names of all employees who have a dependent with the same first name as themselves. 
SELECT E.SSN, E.Fname, E.Lname
FROM 
	Employee as E
	JOIN Dependent as D ON D.Essn = E.SSN AND D.Dependent_Name = E.FName

-- Ex C
-- Find the names of all employees who are directly supervised be ‘Franklin Wong’. 
SELECT E.SSN, E.Fname, E.Lname
FROM 
	Employee as E
	JOIN Employee as S ON E.SuperSSN = S.SSN
WHERE 
	S.FName = 'Franklin' 
	AND S.LName = 'Wong'

-- Ex D
-- For each project, list the project name and the total hours per week (by all employees) spent on that project. 
SELECT P.PName, SUM(W.Hours) AS Hours
FROM 
	Project as P
	JOIN Works_on as W ON W.Pno = P.PNumber
GROUP BY
	P.PName

-- Ex E TODO
-- Retrieve the names of all employees who work on every project. 
SELECT PNumber FROM Project
SELECT *--E.SSN, E.FName, E.LName
FROM 
	Employee as E
	JOIN Works_on as W ON w.Essn = E.SSN
WHERE
	W.Pno IN (SELECT PNumber FROM Project)

-- Ex F TODO
-- Retrieve the names of all employees who do not work on any project.

-- EX G TODO
-- For each department, retrieve the department name and the average salary of all employees working in that department.
SELECT D.DNumber, AVG(E.Salary) as 'Avg. Salary' 
FROM
	Department as D
	JOIN Employee as E ON D.DNumber = E.Dno
GROUP BY D.DNumber


-- Ex H TODO
-- Retrieve the average salary of all female employees.
SELECT Avg(Salary) as 'Avg. Salary'
FROM Employee
WHERE Sex = 'F'
GROUP BY Sex

-- EX I TODO
-- Find the names and addresses of all employees who work on at least one project located in Houston but whose department has no location in Houston.
SELECT DISTINCT D.DNumber
FROM 
	Department AS D
	JOIN Dept_Locations AS L ON L.DNUmber = D.DNumber
	WHERE L.DLocation != 'Houston'

-- EX J TODO
-- List the last names of all department managers who have no dependents. 