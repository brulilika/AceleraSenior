USE DB_VENDAS
GO

-- Declara��o de uma vari�vel para receber o par�metro de sa�da
DECLARE @resposta INT;

-- Na execu��o, incluir a vari�vel que conter� o parametro de sa�da
EXEC p_incluir_cliente '64786463000', 'Jose Castilho', '4955-8754', 'jcastilho@mail.com', @resposta OUTPUT;

-- exibir o valor do par�metro de sa�da
SELECT @resposta AS STATUS;