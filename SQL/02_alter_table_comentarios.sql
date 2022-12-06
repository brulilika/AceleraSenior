USE DB_FORUM
GO

-- ALTERANDO A ESTRUTURA DA TABELA:
-- REMOVENDO O CAMPO 'NOME' DA TABELA COMENTARIOS
ALTER TABLE COMENTARIOS 
DROP COLUMN NOME
GO

-- ADICIONANDO UM RELACIONAMENTO ENTRE USUARIO E COMENTARIOS
ALTER TABLE COMENTARIOS
ADD FOREIGN KEY(IDUSUARIO) REFERENCES USUARIO(ID)
GO
