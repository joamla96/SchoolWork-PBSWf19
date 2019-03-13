Use Company


-- Ex 1
GO
CREATE TRIGGER CheckProjectLocation ON Project
	AFTER INSERT, UPDATE
AS BEGIN
	DECLARE 
		@projectLocation NVARCHAR(max),
		@departmentId INT,
		@departmentLocation NVARCHAR(max);
		 
	SELECT TOP 1 @projectLocation = PLocation, @departmentId = Dnum FROM inserted;
	SELECT @departmentLocation = DLocation FROM Dept_Locations WHERE DNUmber = @departmentId

	IF (@departmentLocation != @projectLocation)
		BEGIN
			RAISERROR('Project Location not valid for Department', 16, 1);
			ROLLBACK;
		END
END

-- Ex 2
GO
CREATE TRIGGER ValidateEmlpoyeeSalary ON Employee
	AFTER INSERT, UPDATE
AS BEGIN
	DECLARE 
		@newSalary MONEY,
		@superSSN NUMERIC(9,0),
		@superSalary MONEY;

	SELECT TOP 1 @newSalary = Salary, @superSSN = SuperSSN FROM inserted;
	SELECT @superSalary = Salary FROM Employee WHERE SSN = @superSSN;

	IF(@newSalary > (@superSalary * 0.9))
		BEGIN
			RAISERROR('Salary cannot exceed 90% of supervisors', 16, 1);
			ROLLBACK;
		END
END


-- Ex 3
GO
CREATE TRIGGER NewSupervisor ON Department
	AFTER UPDATE
AS BEGIN
	DECLARE 
		@newSuperSSN NUMERIC(9,0),
		@departmentId INT;

	SELECT TOP 1 @newSuperSSN = MgrSSN, @departmentId = DNumber FROM inserted;
	UPDATE Employee SET SuperSSN = @newSuperSSN WHERE Dno = @departmentId;
END

-- Ex 4
GO
CREATE FUNCTION udf_getEmployeeProjects(@SSN NUMERIC(9,0))
	RETURNS TABLE
AS RETURN
	SELECT Pnumber, Pname, Dname, Plocation, Hours
		FROM Project
		JOIN Department ON Project.DNum = Dnumber
		JOIN Works_On ON Essn = @SSN AND Pnumber = Pno


-- Ex 5
GO
CREATE FUNCTION udf_NumberOfEmployees(@DepartmentName NVARCHAR(max))
	RETURNS TABLE
AS RETURN
	SELECT COUNT(*) AS Number FROM Employee WHERE Dno = (SELECT DNumber FROM Department WHERE Dname LIKE CONCAT('%', @DepartmentName, '%'))


-- Ex 6
GO
