USE DB_FORUM
GO

-- USANDO JOINS 
/*
	1. Estabelecendo uma jun��o entre FORUM e COMENTARIOS
	   Ser�o mostrados os dados do forum e os coment�rios publicados
*/   

-- VERSAO 1
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	FORUM F INNER JOIN COMENTARIOS C
ON 
	F.ID = C.IDFORUM


-- VERSAO 2
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	COMENTARIOS C INNER JOIN FORUM F
ON 
	F.ID = C.IDFORUM

-------------------------------------------------------------
/*
	2. Estabelecendo uma jun��o entre FORUM e COMENTARIOS,
	   incluindo os foruns que n�o tiveram nenhum comentario.
	   Usaremos LEFT JOIN, que priorizar� a tabela do lado 
	   esquerdo (LEFT).
	   
*/ 

--Vers�o 1
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	FORUM F LEFT JOIN COMENTARIOS C
ON 
	F.ID = C.IDFORUM


--Vers�o 2: neste caso, o LEFT JOIN priorizar� a tabela COMENTARIOS, acrescentando 
-- o forum como complemento.
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	COMENTARIOS C LEFT JOIN  FORUM F
ON 
	F.ID = C.IDFORUM


-------------------------------------------------------------
/*
	3. Estabelecendo uma jun��o entre FORUM e COMENTARIOS,
	   incluindo os foruns que n�o tiveram nenhum comentario.
	   Usaremos RIGHT JOIN, que priorizar� a tabela do lado 
	   direito (RIGHT).
	   
*/ 

--Vers�o 1: neste caso, o RIGHT JOIN priorizar� a tabela COMENTARIOS, acrescentando 
-- o forum como complemento.
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	FORUM F RIGHT JOIN COMENTARIOS C
ON 
	F.ID = C.IDFORUM


--Vers�o 2: 
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	COMENTARIOS C RIGHT JOIN  FORUM F
ON 
	F.ID = C.IDFORUM
