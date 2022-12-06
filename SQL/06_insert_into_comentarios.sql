USE DB_FORUM
GO

-- Adicionar comentários à tabela COMENTÁRIOS
INSERT INTO COMENTARIOS (IDFORUM, IDUSUARIO, COMENTARIO, DATA)
VALUES
(1, 1, 'Deu até fome', GETDATE()),
(1, 2, 'Concordo, eu também', GETDATE()),
(2, 2, 'Vou participar novamente', GETDATE()),
(2, 3, 'Já fiz um curso como esse', GETDATE()),
(3, 3, 'Minha empresa não me dispensou', GETDATE()),
(3, 1, 'Não fui trabalhar nos dias de jogos', GETDATE()),
(3, 2, 'Eu assiti trabalhando', GETDATE())
GO
