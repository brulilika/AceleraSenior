USE DB_VENDAS
GO

CREATE OR ALTER PROC p_remover_item
(
	@id_item INT
)
AS
BEGIN
	DECLARE @idproduto INT
	DECLARE @quantidade FLOAT

	SELECT @idproduto = ID_PRODUTO, @quantidade=QUANTIDADE FROM TB_ITENS WHERE ID=@id_item
	UPDATE TB_ESTOQUE SET QUANTIDADE = QUANTIDADE + @quantidade WHERE ID_PRODUTO = @idproduto

	DELETE FROM TB_ITENS WHERE ID = @id_item
END