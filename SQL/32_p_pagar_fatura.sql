USE DB_VENDAS
GO

CREATE OR ALTER PROC p_pagar_fatura
(
	@id_fatura INT
)
AS
BEGIN
	BEGIN TRY
		IF EXISTS(SELECT * FROM TB_FATURAS WHERE ID = @id_fatura)
			BEGIN
				BEGIN TRANSACTION

					-- verificando se a fatura já foi paga
					DECLARE @status SMALLINT
					SELECT @status = STATUS FROM TB_FATURAS WHERE ID = @id_fatura
					IF @status = 2
					BEGIN
						RAISERROR('A fatura informada já foi paga', 16, 1)
					END
					UPDATE TB_FATURAS SET STATUS = 2 WHERE ID = @id_fatura

					-- verificando se o pedido já foi finalizado, ainda está aberto

					DECLARE @id_pedido INT
					DECLARE @situacao SMALLINT
					SELECT @id_pedido = ID_PEDIDO FROM TB_FATURAS WHERE ID = @id_fatura
					SELECT @situacao = SITUACAO FROM TB_PEDIDOS WHERE ID = @id_pedido

					IF @situacao <> 2
					BEGIN
						RAISERROR('Este pedido já foi finalizado, ou ainda está aberto.',16,1)
					END

					UPDATE TB_PEDIDOS SET SITUACAO = 3 WHERE ID = @id_pedido
				COMMIT TRANSACTION
				PRINT('Pagamento da fatura realizado com sucesso!')
			END
		ELSE
			BEGIN
				RAISERROR('A fatura informada não foi localizada', 16, 1)
			END
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
		SELECT
		ERROR_MESSAGE() AS MENSAGEM,
		ERROR_SEVERITY() AS SEVERIDADE,
		ERROR_STATE() AS STATUS
	END CATCH
END