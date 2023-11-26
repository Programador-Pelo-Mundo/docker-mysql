SELECT *
FROM livros
WHERE autor_id IN (
  SELECT id
  FROM autores
  WHERE pais = 'Brasil'
);


SELECT
    *
FROM
    livros AS l1
WHERE
    ano_publicacao >(
    SELECT
        AVG(ano_publicacao)
    FROM
        livros
);


SELECT
    livros.isbn,
    livros.titulo,
    autores.nome as autor,
    autores.pais
FROM
    livros
INNER JOIN autores ON livros.autor_id = autores.id;


SELECT autores.nome, COUNT(*) AS qtd_livros
FROM autores
INNER JOIN livros
ON autores.id = livros.autor_id
GROUP BY autores.nome;


WITH autores_com_qtd_livros AS (
  SELECT autores.nome, COUNT(*) AS qtd_livros
  FROM autores
  INNER JOIN livros
  ON autores.id = livros.autor_id
  GROUP BY autores.nome
)
SELECT nome, qtd_livros
FROM autores_com_qtd_livros;

WITH
    autores_com_qtd_livros AS(
    SELECT
        autores.nome,
        COUNT(*) AS qtd_livros
    FROM
        autores
    INNER JOIN livros ON autores.id = livros.autor_id
    GROUP BY
        autores.nome
)
SELECT
    nome,
    qtd_livros
FROM
    autores_com_qtd_livros;
