CREATE TABLE [dbo].[Employees] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]   VARCHAR (50)  NOT NULL,
    [LastName]    VARCHAR (50)  NOT NULL,
    [DateOfBirth] DATE          NOT NULL,
    [Email]       NVARCHAR (50) NOT NULL,
    [Salary]      FLOAT (53)    NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

