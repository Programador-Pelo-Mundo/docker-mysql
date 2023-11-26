BEGIN;

INSERT INTO autores (id, nome, pais) VALUES
    (1, 'Carlos Drummond de Andrade', 'Brasil'),
    (2, 'Ruth Rocha', 'Brasil'),
    (3, 'Machado de Assis', 'Brasil'),
    (4, 'Clarice Lispector', 'Brasil'),
    (5, 'Guimarães Rosa', 'Brasil'),
    (6, 'Antoine de Saint-Exupéry', 'França'),
    (7, 'Gabriel García Márquez', 'Colombia'),
    (8, 'Érico Veríssimo', 'Brasil'),
    (9, 'Franz Kafka', 'Czechia'),
    (10, 'Callegari', 'Brasil')
;

INSERT INTO livros
    (isbn, titulo, ano_publicacao, autor_id)
VALUES
    ('978-0-3333-5566-1', 'O Fazendeiro do Ar', 1955, 1),
    ('978-85-267-3791-7','Poesia de Carlos Drummond de Andrade', 1994, 1),
    ('978-0-5555-5566-2', 'A Arca de Noé', 1998, 2),
    ('978-0-7927-5566-4', 'O Pequeno Príncipe', 1943, 6),
    ('978-85-267-4635-4', 'Memórias Póstumas de Brás Cubas', 1881, 3),
    ('978-85-267-4820-4','Perto do Coração Selvagem', 1943, 4),
    ('978-85-267-0389-1','Grande Sertão: Veredas', 1956, 5),
    ('978-85-267-5735-8','O Tempo e o Vento', 1949, 8),
    ('978-0-7927-5567-1','A Metamorfose', 1915, 9),
    ('978-85-267-4636-1','Cem Anos de Solidão', 1967, 7)
;

COMMIT;
