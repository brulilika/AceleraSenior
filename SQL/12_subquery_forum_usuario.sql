SELECT DISTINCT IDFORUM FROM COMENTARIOS

-- SUBQUERY
--1. Buscando os foruns que não possuam comentários
SELECT * FROM FORUM WHERE ID NOT IN (SELECT DISTINCT IDFORUM FROM COMENTARIOS)

--2. Buscando os foruns que possuam comentários
SELECT * FROM FORUM WHERE ID IN (SELECT DISTINCT IDFORUM FROM COMENTARIOS)

--------------------------------------------------------------------
SELECT DISTINCT IDUSUARIO FROM COMENTARIOS

--3. Usando subquery, remover os usuários que não fizeram comentários
DELETE FROM USUARIO WHERE ID NOT IN (SELECT DISTINCT IDUSUARIO FROM COMENTARIOS)

