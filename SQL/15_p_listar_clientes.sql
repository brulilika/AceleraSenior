USE DB_VENDAS
GO

-- Criar uma STORED PROCEDURE que realiza a consulta a todos os clientes
CREATE OR ALTER PROC p_listar_clientes
AS
BEGIN
	SELECT * FROM TB_CLIENTES
END

-- Executando a procedure criada
EXEC p_listar_clientes