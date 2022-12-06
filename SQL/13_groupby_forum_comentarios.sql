USE DB_FORUM
GO

-- 1. Agrupamentos - obtendo a quantidade de cada forum
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, COUNT(C.COMENTARIO) AS COMENTARIOS
FROM
	FORUM F INNER JOIN COMENTARIOS C
ON 
	F.ID = C.IDFORUM
GROUP BY
	F.ID, F.TITULO, F.DESCRICAO



-- 2. Agrupamentos - obtendo a quantidade de cada forum, porém selecionando
--    apenas os foruns cuja quantidade seja 2. Usaremos o comando HAVING 
--    (similar ao WHERE) que é aplicado sobre um conjunto de linhas agrupadas
--    mediante uma função de agregação.

SELECT 
	F.ID, F.TITULO, F.DESCRICAO, COUNT(C.COMENTARIO) AS COMENTARIOS
FROM
	FORUM F INNER JOIN COMENTARIOS C
ON 
	F.ID = C.IDFORUM
GROUP BY
	F.ID, F.TITULO, F.DESCRICAO
HAVING
	COUNT(C.COMENTARIO) = 2
