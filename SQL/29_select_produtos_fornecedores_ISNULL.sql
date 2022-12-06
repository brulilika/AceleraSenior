USE DB_VENDAS
GO

/*
	Listar todos os produtos e todos os fornecedores,
	mesmo os que não possuam relação entre si
*/

-- poderiamos usar CASE / WHEN, como mostrado no script 24
SELECT
	ISNULL(P.DESCRICAO, 'SEM PRODUTO'),
	ISNULL(F.NOME, 'SEM FORNECEDOR')
FROM
	TB_PRODUTOS P FULL JOIN TB_PRODUTOS_FORNECEDORES PF
ON P.ID = PF.ID_PRODUTO
	FULL JOIN TB_FORNECEDORES F
ON F.DOCUMENTO = PF.DOC_FORNECEDOR