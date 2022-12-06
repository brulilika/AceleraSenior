USE DB_FORUM
GO
-- Executando JOINS entre as tr�s tabelas: FORUM, COMENTARIOS e USUARIO

SELECT 
	F.TITULO,
	F.DESCRICAO,
	U.NOME,
	C.COMENTARIO
FROM
	COMENTARIOS C 
	INNER JOIN FORUM F ON F.ID = C.IDFORUM
	INNER JOIN USUARIO U ON U.ID = C.IDUSUARIO


-- usando FULL JOIN: mostrando foruns sem comentarios, bem como 
-- usuarios sem coment�rio
SELECT 
	F.TITULO,
	F.DESCRICAO,
	U.NOME,
	C.COMENTARIO
FROM
	COMENTARIOS C 
	FULL JOIN FORUM F ON F.ID = C.IDFORUM
	FULL JOIN USUARIO U ON U.ID = C.IDUSUARIO




-- No script abaixo, o uso do INNER JOIN anula o efeito do LEFT JOIN colocado
-- anteriormente
SELECT 
	F.TITULO,
	F.DESCRICAO,
	U.NOME,
	C.COMENTARIO
FROM
	FORUM F  
	LEFT JOIN COMENTARIOS C ON F.ID = C.IDFORUM
	INNER JOIN USUARIO U ON U.ID = C.IDUSUARIO


-- Para evitar o efeito da anula��o, colocamos o RIGHT JOIN na outra ponta.
SELECT 
	F.TITULO,
	F.DESCRICAO,
	U.NOME,
	C.COMENTARIO
FROM
	FORUM F  
	LEFT JOIN COMENTARIOS C ON F.ID = C.IDFORUM
	RIGHT JOIN USUARIO U ON U.ID = C.IDUSUARIO
