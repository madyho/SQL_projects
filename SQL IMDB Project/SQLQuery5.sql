SELECT * FROM dbo.basics
WHERE genres LIKE '%Horror%';

SELECT titleType, primaryTitle, startYear, genres, averageRating, numVotes FROM dbo.basics
INNER JOIN dbo.ratings ON dbo.ratings.tconst = dbo.basics.tconst
WHERE genres LIKE '%Horror%' AND startYear > 1989 AND averageRating > 8.0 AND numVotes > 1000 AND titleType = 'movie';

SELECT tconst,prim FROM dbo.basics;