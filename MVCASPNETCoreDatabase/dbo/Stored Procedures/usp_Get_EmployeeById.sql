CREATE PROC [DBO].[usp_Get_EmployeeById]
(
	@Id INT

)
AS
BEGIN

	SELECT Id, FirstName, LastName, DateOfBirth, Email, Salary FROM dbo.Employees WITH(NOLOCK)
		WHERE Id = @Id
END