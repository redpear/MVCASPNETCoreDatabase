-- Read All Employees
CREATE PROC [DBO].[usp_Get_Employees]
AS
BEGIN

	SELECT Id, FirstName, LastName, DateOfBirth, Email, Salary FROM dbo.Employees WITH(NOLOCK)
END