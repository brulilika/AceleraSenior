USE DB_FORUM
GO

-- inserir um novo registro na tabela FORUM
INSERT INTO FORUM (TITULO, DESCRICAO, DATA, RESPONSAVEL) 
VALUES ('Alimentação', 'Alimentação Saudável', '2022-11-30','Impacta')

-- inserir vários registros simultaneamente na tabela FORUM
INSERT INTO FORUM (TITULO, DESCRICAO, DATA, RESPONSAVEL, TELEFONE) VALUES 
('Tecnologia', 'Analise de Dados', '2022-11-30','Atos','3266-0000'),
('Esportes', 'Copa do mundo', '2022-11-28','Fifa','2508-7878'),
('Eleições', 'Eleições e fraudes pelo mundo', '2023-01-01','Justiça Eleitoral','2508-7878')
