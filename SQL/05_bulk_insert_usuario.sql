USE DB_FORUM
GO

BULK INSERT dbo.USUARIO
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\usuario.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO