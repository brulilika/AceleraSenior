/*
	Vamos incluir um novo cliente. Se o cliente não existir, ele é adicionado.
	Caso contrário, seus dados são alterados.
*/
USE DB_VENDAS
GO 

CREATE OR ALTER PROC p_incluir_cliente
(
	@documento VARCHAR(14),
	@nome VARCHAR(60),
	@telefone VARCHAR(20),
	@email VARCHAR(100),
	@status INT OUTPUT		-- Parametro usado para retornar um valor ao chamador
							-- da procedure. @status =1: incluido, @status = 2: atualizado
)
AS
BEGIN
	IF EXISTS(SELECT DOCUMENTO FROM TB_CLIENTES WHERE DOCUMENTO = @documento)
		BEGIN
			UPDATE TB_CLIENTES SET NOME=@nome, TELEFONE=@telefone, EMAIL=@email
			WHERE DOCUMENTO = @documento

			SET @status = 2
			PRINT('CLIENTE ATUALIZADO')
		END
	ELSE
		BEGIN
			INSERT INTO TB_CLIENTES(DOCUMENTO, NOME, TELEFONE, EMAIL) VALUES
			(@documento, @nome, @telefone, @email)

			SET @status = 1
			PRINT('CLIENTE INCLUÍDO')
		END
END