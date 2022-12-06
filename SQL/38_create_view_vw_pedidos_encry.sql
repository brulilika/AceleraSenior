USE DB_VENDAS
GO

-- A view encriptada � mais r�pida, seu acesso � mais eficiente do que
-- uma view tradicional
CREATE VIEW VW_PEDIDOS_ENCRY WITH ENCRYPTION
AS
SELECT 
	C.DOCUMENTO, 
	C.NOME, 
	P.NUMEROPEDIDO,
	P.ID,
	SUM(IT.VALOR_TOTAL) AS TOTAL_PEDIDO	
FROM
	TB_CLIENTES C, TB_PEDIDOS P, TB_ITENS IT
WHERE
	C.DOCUMENTO = P.DOC_CLIENTE
	AND P.ID = IT.ID_PEDIDO
GROUP BY
	C.DOCUMENTO, C.NOME, P.NUMEROPEDIDO, P.ID
GO

SELECT DOCUMENTO, NOME, TOTAL_PEDIDO, TOTAL_PEDIDO * 0.10 AS TAXA 
FROM VW_PEDIDOS_ENCRY