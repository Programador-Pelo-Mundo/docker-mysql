INSERT INTO autor (name) VALUES ('Carlos Drummond de Andrade');
INSERT INTO autor (name) VALUES ('Ruth Rocha');

INSERT INTO livros
    (autor_id, titulo, ano_publicacao)
VALUES
    (2, 'A Arca de Noé', 1998),
    (1, 'Fazendeiro do Ar', 1955);


UPDATE livros SET titulo = 'O Fazendeiro do Ar' WHERE id = 2;
