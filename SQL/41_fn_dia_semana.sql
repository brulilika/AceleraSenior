USE DB_VENDAS
GO

CREATE OR ALTER FUNCTION FN_DIA_SEMANA(@data DATETIME)
	RETURNS VARCHAR(15)
AS
BEGIN
	DECLARE @num_dia INT, @desc_dia VARCHAR(15)
	SET @num_dia = DATEPART(WEEKDAY, @data) -- retorna o número do dia na semana

	SET @desc_dia = CASE @num_dia
		WHEN 1 THEN 'DOMINGO'
		WHEN 2 THEN 'SEGUNDA'
		WHEN 3 THEN 'TERÇA'
		WHEN 4 THEN 'QUARTA'
		WHEN 5 THEN 'QUINTA'
		WHEN 6 THEN 'SEXTA'
		WHEN 7 THEN 'SÁBADO'
	END
	RETURN @desc_dia
END
GO

-- Executando a função
SELECT DBO.FN_DIA_SEMANA(GETDATE())
