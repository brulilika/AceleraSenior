USE DB_FORUM
GO

-- USANDO JOINS 
/*
	1. Estabelecendo uma junção entre FORUM e COMENTARIOS
	   Serão mostrados os dados do forum e os comentários publicados
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
	2. Estabelecendo uma junção entre FORUM e COMENTARIOS,
	   incluindo os foruns que não tiveram nenhum comentario.
	   Usaremos LEFT JOIN, que priorizará a tabela do lado 
	   esquerdo (LEFT).
	   
*/ 

--Versão 1
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	FORUM F LEFT JOIN COMENTARIOS C
ON 
	F.ID = C.IDFORUM


--Versão 2: neste caso, o LEFT JOIN priorizará a tabela COMENTARIOS, acrescentando 
-- o forum como complemento.
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	COMENTARIOS C LEFT JOIN  FORUM F
ON 
	F.ID = C.IDFORUM


-------------------------------------------------------------
/*
	3. Estabelecendo uma junção entre FORUM e COMENTARIOS,
	   incluindo os foruns que não tiveram nenhum comentario.
	   Usaremos RIGHT JOIN, que priorizará a tabela do lado 
	   direito (RIGHT).
	   
*/ 

--Versão 1: neste caso, o RIGHT JOIN priorizará a tabela COMENTARIOS, acrescentando 
-- o forum como complemento.
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	FORUM F RIGHT JOIN COMENTARIOS C
ON 
	F.ID = C.IDFORUM


--Versão 2: 
SELECT 
	F.ID, F.TITULO, F.DESCRICAO, C.COMENTARIO
FROM
	COMENTARIOS C RIGHT JOIN  FORUM F
ON 
	F.ID = C.IDFORUM
