USE DB_VENDAS
GO

/*
	Usando as tabelas TB_CLIENTES, TB_PEDIDOS e TB_ITENS, apresentar:
	- o documnto do cliente,
	- o nome do cliente, 
	- numero do pedido
	- o valor total por pedido.
*/

SELECT 
	C.DOCUMENTO, 
	C.NOME, 
	P.NUMEROPEDIDO,
	P.ID,
	FORMAT(SUM(IT.VALOR_TOTAL), 'C', 'pt-br') AS TOTAL_PEDIDO	--'C' = Currency
FROM
	TB_CLIENTES C, TB_PEDIDOS P, TB_ITENS IT
WHERE
	C.DOCUMENTO = P.DOC_CLIENTE
	AND P.ID = IT.ID_PEDIDO
GROUP BY
	C.DOCUMENTO, C.NOME, P.NUMEROPEDIDO, P.ID