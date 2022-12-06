USE DB_FORUM
GO

BULK INSERT dbo.FORUM
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\forum.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO