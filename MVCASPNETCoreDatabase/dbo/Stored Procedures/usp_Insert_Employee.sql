CREATE PROC [DBO].[usp_Insert_Employee]
(
	@FirstName	VARCHAR(50)
	,@LastName	VARCHAR(50)
	,@DateOfBirth DATE
	,@Email		VARCHAR(50)
	,@Salary	FLOAT

)
AS
BEGIN
	BEGIN TRY

		BEGIN TRAN

		INSERT INTO dbo.Employees (FirstName, LastName, DateOfBirth, Email, Salary) 
			VALUES
			(
				@FirstName
				,@LastName
				,@DateOfBirth
				,@Email
				,@Salary
			)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN
	END CATCH
END