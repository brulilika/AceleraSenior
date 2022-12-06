USE DB_VENDAS
GO
-- fun��o tabular inline: o retorno � produzido pela pr�pria consulta
CREATE OR ALTER FUNCTION FN_INTERVALO_DATAS_PEDIDO(@data1 DATETIME, @data2 DATETIME)
	RETURNS TABLE
AS
RETURN (SELECT 
			P.DOC_CLIENTE, P.DATAPEDIDO, P.NUMEROPEDIDO, SUM(IT.VALOR_TOTAL) AS TOTAL
		FROM 
			TB_PEDIDOS P, TB_ITENS IT
		WHERE 
			P.ID = IT.ID_PEDIDO AND P.DATAPEDIDO BETWEEN @data1 AND @data2
		GROUP BY 
			P.DOC_CLIENTE, P.DATAPEDIDO, P.NUMEROPEDIDO)
GO

-- Executando a fun��o
SELECT * FROM DBO.FN_INTERVALO_DATAS_PEDIDO('2022-12-01', '2022-12-02')

-- Atribuindo o resultado da execu��o da fun��o para uma vari�vel
DECLARE @tabela TABLE (doc VARCHAR(14), datap DATETIME, pedido VARCHAR(20), valor FLOAT)

INSERT INTO @tabela
SELECT * FROM DBO.FN_INTERVALO_DATAS_PEDIDO('2022-12-01', '2022-12-02')

SELECT * FROM @tabela





