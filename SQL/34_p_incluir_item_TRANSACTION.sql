USE DB_VENDAS
GO

CREATE OR ALTER PROC p_incluir_item
(
	@idpedido INT,
	@idproduto INT,
	@quantidade FLOAT
)
AS
BEGIN
	IF EXISTS(SELECT * FROM TB_ESTOQUE WHERE ID_PRODUTO=@idproduto AND QUANTIDADE >= @quantidade)
		BEGIN
			BEGIN TRY
				BEGIN TRANSACTION

				DECLARE @preco FLOAT	-- Preço do produto
				SELECT @preco = PRECO_CUSTO FROM TB_PRODUTOS WHERE ID = @idproduto

				INSERT INTO TB_ITENS(ID_PEDIDO, ID_PRODUTO, QUANTIDADE, VALOR_TOTAL)
				VALUES (@idpedido, @idproduto, @quantidade, @preco * @quantidade)

				UPDATE TB_ESTOQUE SET QUANTIDADE = QUANTIDADE - @quantidade WHERE ID_PRODUTO = @idproduto
				COMMIT TRANSACTION
			END TRY
			BEGIN CATCH
				ROLLBACK TRANSACTION
			END CATCH
		END
	ELSE
		BEGIN
			DECLARE @mensagem VARCHAR(50);
			SET @mensagem = 'O produto informado não está disponível'
			SELECT @mensagem AS MENSAGEM
		END
END