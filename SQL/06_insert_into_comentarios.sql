USE DB_FORUM
GO

-- Adicionar coment�rios � tabela COMENT�RIOS
INSERT INTO COMENTARIOS (IDFORUM, IDUSUARIO, COMENTARIO, DATA)
VALUES
(1, 1, 'Deu at� fome', GETDATE()),
(1, 2, 'Concordo, eu tamb�m', GETDATE()),
(2, 2, 'Vou participar novamente', GETDATE()),
(2, 3, 'J� fiz um curso como esse', GETDATE()),
(3, 3, 'Minha empresa n�o me dispensou', GETDATE()),
(3, 1, 'N�o fui trabalhar nos dias de jogos', GETDATE()),
(3, 2, 'Eu assiti trabalhando', GETDATE())
GO
