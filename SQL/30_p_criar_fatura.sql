USE DB_VENDAS
GO

CREATE OR ALTER PROC p_criar_fatura
(
	@id_pedido INT,
	@numerocartao VARCHAR(16)
)
AS
BEGIN
	BEGIN TRY
		IF EXISTS(SELECT NUMEROCARTAO FROM TB_CARTOES WHERE NUMEROCARTAO = @numerocartao)
			BEGIN
				-- Buscando os pedidos ainda não faturados
				DECLARE @valor_pedido FLOAT
				SET @valor_pedido = 0
				SELECT @valor_pedido = SUM(IT.VALOR_TOTAL) FROM TB_PEDIDOS P
					INNER JOIN TB_ITENS IT ON P.ID = IT.ID_PEDIDO
					WHERE SITUACAO = 1 AND P.ID = @id_pedido

				-- verificando o valor acumulado no cartão, em decorrencia de outros pedidos
				DECLARE @valor_total_fatura FLOAT
				SET @valor_total_fatura = 0
				SELECT @valor_total_fatura = ISNULL(SUM(VALOR), 0) FROM TB_FATURAS
					WHERE NUMEROCARTAO = @numerocartao

				-- calculando o valor total a ser usado no cartão
				SET @valor_total_fatura = @valor_total_fatura + @valor_pedido

				IF EXISTS(
					SELECT * FROM TB_CARTOES WHERE NUMEROCARTAO=@numerocartao 
					AND LIMITE >= @valor_total_fatura)					
					BEGIN
						-- incluir o valor e o cartão na tabela TB_FATURAS, alem de atualizar TB_PEDIDOS
						BEGIN TRANSACTION
							INSERT INTO TB_FATURAS(ID_PEDIDO, NUMEROCARTAO, VALOR, STATUS) VALUES
							(@id_pedido, @numerocartao, @valor_pedido, 1)

							UPDATE TB_PEDIDOS SET SITUACAO = 2 WHERE ID = @id_pedido
						COMMIT TRANSACTION
						PRINT('Fatura criada com sucesso!')
					END
			END
		ELSE
			BEGIN
				RAISERROR('O cartão informado não existe', 16, 1)
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