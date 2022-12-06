USE DB_VENDAS
GO

-- Declaração de uma variável para receber o parâmetro de saída
DECLARE @resposta INT;

-- Na execução, incluir a variável que conterá o parametro de saída
EXEC p_incluir_cliente '64786463000', 'Jose Castilho', '4955-8754', 'jcastilho@mail.com', @resposta OUTPUT;

-- exibir o valor do parÂmetro de saída
SELECT @resposta AS STATUS;