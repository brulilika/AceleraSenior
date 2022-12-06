USE DB_VENDAS
GO

CREATE OR ALTER PROC p_incluir_pedido
(
	@documento VARCHAR(14),
	@data DATETIME,
	@numeropedido VARCHAR(20)
)
AS
BEGIN
	IF NOT EXISTS(SELECT NUMEROPEDIDO FROM TB_PEDIDOS WHERE NUMEROPEDIDO=@numeropedido)
		BEGIN
			INSERT INTO TB_PEDIDOS(DOC_CLIENTE, DATAPEDIDO, NUMEROPEDIDO, SITUACAO)
			VALUES(@documento, @data, @numeropedido, 1)
		END
	ELSE
		BEGIN
			DECLARE @mensagem VARCHAR(50);
			SET @mensagem = 'Já existe um pedido com o número informado'
			SELECT @mensagem AS MENSAGEM
		END
END