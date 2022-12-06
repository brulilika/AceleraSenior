USE DB_VENDAS
GO
/*
	Usando as tabelas TB_CLIENTES e TB_PEDIDOS, apresentar
	- o documento do cliente,
	- o nome do cliente,
	- o numero do pedido
*/

-- Utilizando INNER JOIN
SELECT 
	C.DOCUMENTO, C.NOME, P.NUMEROPEDIDO
FROM
	TB_CLIENTES C INNER JOIN TB_PEDIDOS P
ON
	C.DOCUMENTO = P.DOC_CLIENTE


-- Apresentar tamb�m os clientes que n�o possu�rem pedidos
SELECT 
	C.DOCUMENTO, C.NOME, P.NUMEROPEDIDO
FROM
	TB_CLIENTES C LEFT JOIN TB_PEDIDOS P
ON
	C.DOCUMENTO = P.DOC_CLIENTE


-- Apresentar tamb�m os clientes que n�o possu�rem pedidos, e 
-- os poss�veis pedidos que n�o tenham clientes
SELECT 
	C.DOCUMENTO, C.NOME, P.NUMEROPEDIDO
FROM
	TB_CLIENTES C FULL JOIN TB_PEDIDOS P
ON
	C.DOCUMENTO = P.DOC_CLIENTE


-- Apresentar tamb�m os clientes que n�o possu�rem pedidos
SELECT 
	C.DOCUMENTO, C.NOME, 
	CASE 
		WHEN P.NUMEROPEDIDO IS NULL THEN 'Nenhum pedido'
		ELSE P.NUMEROPEDIDO
	END AS NUMEROPEDIDO
FROM
	TB_CLIENTES C LEFT JOIN TB_PEDIDOS P
ON
	C.DOCUMENTO = P.DOC_CLIENTE