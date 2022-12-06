USE DB_FORUM
GO

-- Realizando consultas básicas

--1. Buscando todos os registros, com todos os campos ('hello world')
SELECT * FROM FORUM

--2. Buscando os campos TITULO e DESCRICAO de todos os registros
SELECT TITULO, DESCRICAO FROM FORUM

--3. Buscando os campos TITULO e DESCRICAO de todos os registros, de forma exclusiva
SELECT DISTINCT TITULO, DESCRICAO, ID FROM FORUM

--4. Buscando todos os campos dos registros cujo ID seja maior que 2
SELECT * FROM FORUM WHERE ID > 2

--5. Registros incluídos no mês de dezembro/2022
SELECT * FROM FORUM WHERE DATA BETWEEN '2022-12-01' AND '2022-12-31'

--6. Registros cujo titulo seja igual a 'Esportes'
SELECT * FROM FORUM WHERE TITULO = 'esportes'

--7. Registros cuja descricao inicie com a letra 'A'
SELECT * FROM FORUM WHERE DESCRICAO LIKE 'A%'

--8. Registros cuja descrição contenha a palavra 'dados'
SELECT * FROM FORUM WHERE DESCRICAO LIKE '%Dados%'
