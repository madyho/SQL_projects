USE IMDB 
GO
IF OBJECT_ID('dbo.crew') IS NOT NULL
	DROP TABLE dbo.crew
GO

CREATE TABLE [dbo].[crew] (
[tconst] nvarchar(max),
[directors] nvarchar(max),
[writers] nvarchar(max)
)

BULK INSERT dbo.crew
FROM 'C:\Users\madyh\Downloads\title.ratings.tsv\crew.tsv'
WITH(
	DATAFILETYPE = 'char',
	FIRSTROW = 2,
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '0x0a'
)
GO

