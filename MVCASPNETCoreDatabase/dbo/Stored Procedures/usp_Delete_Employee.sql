CREATE PROC [DBO].[usp_Delete_Employee]
(
	 @Id INT
)
AS
BEGIN
DECLARE @RowCount INT = 0
	BEGIN TRY
		SET @RowCount = (SELECT COUNT(1) FROM DBO.Employees WITH (NOLOCK) WHERE Id=@Id)
	
	IF(@RowCount > 0)
		BEGIN
			BEGIN TRAN
				DELETE From dbo.Employees
					WHERE Id = @Id
			COMMIT TRAN
		END
	
	END TRY

	BEGIN CATCH
		ROLLBACK TRAN
	END CATCH


END