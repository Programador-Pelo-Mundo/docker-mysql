-- these structures are purely intended to be didactical, a lot of details were let aside

CREATE DATABASE `livraria`;

USE `livraria`;

CREATE TABLE autores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE,
    pais VARCHAR(50) NOT NULL
);

CREATE TABLE livros (
    isbn VARCHAR(30) PRIMARY KEY,
    titulo VARCHAR(100) UNIQUE NOT NULL,
    ano_publicacao int NOT NULL,
    autor_id INT NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES autores(id)
);
