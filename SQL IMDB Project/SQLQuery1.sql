USE IMDB 
GO
IF OBJECT_ID('dbo.basics') IS NOT NULL
	DROP TABLE dbo.basics
GO

CREATE TABLE [dbo].[basics] (
[tconst] nvarchar(50),
[titleType] nvarchar(MAX),
[primaryTitle] nvarchar(MAX),
[originalTitle] nvarchar(MAX),
[isAdult] nvarchar(10),
[startYear] int,
[endYear] int,
[runtimeMinutes] numeric(38,0),
[genres] varchar(50)
)

BULK INSERT dbo.basics
FROM 'C:\Users\madyh\Downloads\title.ratings.tsv\basics.tsv'
WITH(
	DATAFILETYPE = 'char',
	FIRSTROW=2,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '0x0a'
)
GO

SELECT * FROM dbo.basics;