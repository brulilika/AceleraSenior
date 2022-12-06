USE DB_VENDAS
GO

DECLARE @datapedido DATETIME;
SET @datapedido = GETDATE();
EXEC p_incluir_pedido '95246145026', @datapedido, '0007/2022'
