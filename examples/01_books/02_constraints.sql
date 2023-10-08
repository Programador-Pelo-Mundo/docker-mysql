ALTER TABLE livros ADD ISBN VARCHAR(50) NOT NULL UNIQUE AFTER autor_id;

ALTER TABLE autores ADD CPF VARCHAR(15) NOT NULL UNIQUE;


CREATE TABLE autores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    cpf VARCHAR(15) UNIQUE
);

CREATE TABLE livros (
    isbn VARCHAR(50) NOT NULL UNIQUE,
    titulo VARCHAR(100) UNIQUE NOT NULL,
    ano_publicacao int NOT NULL,
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id);
);



CREATE TABLE resumos (
    id VARCHAR(50) NOT NULL ,
    content VARCHAR(100) NOT NULL,
    FOREIGN KEY (id) REFERENCES livros(isbn)
);





CREATE TABLE livros (
    isbn VARCHAR(50) NOT NULL UNIQUE,
    titulo VARCHAR(100) UNIQUE NOT NULL,
    ano_publicacao int NOT NULL,
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES autores(id);
);
