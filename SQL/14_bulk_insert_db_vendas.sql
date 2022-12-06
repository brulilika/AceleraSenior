USE DB_VENDAS
GO

BULK INSERT dbo.TB_CLIENTES
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\clientes.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO


BULK INSERT dbo.TB_CATEGORIAS
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\categorias.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO


BULK INSERT dbo.TB_FORNECEDORES
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\fornecedores.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO

BULK INSERT dbo.TB_CARTOES
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\cartoes.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO

BULK INSERT dbo.TB_PEDIDOS
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\pedidos.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO

BULK INSERT dbo.TB_FATURAS
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\faturas.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO

BULK INSERT dbo.TB_PRODUTOS
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\produtos.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO

BULK INSERT dbo.TB_PRODUTOS_FORNECEDORES
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\produtos_fornecedores.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO

BULK INSERT dbo.TB_ITENS
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\itens.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO

BULK INSERT dbo.TB_ESTOQUE
FROM 'C:\Documentos\Projetos\Atos\02_SQLServer2019\csv_vendas\estoque.csv'
WITH (
	FORMAT = 'CSV',
	FIRSTROW = 2,
	FIELDTERMINATOR = ';',
	ROWTERMINATOR = '\n'
)
GO