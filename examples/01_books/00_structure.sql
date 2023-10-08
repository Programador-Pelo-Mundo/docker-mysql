-- these structures are purely intended to be didactical, a lot of details were let aside

CREATE DATABASE `livraria`;

USE `livraria`;

CREATE TABLE autores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE livros (
    id INT PRIMARY KEY AUTO_INCREMENT,
    autor_id INT NOT NULL,
    titulo VARCHAR(100) UNIQUE NOT NULL,
    ano_publicacao int NOT NULL
);



ALTER TABLE livro RENAME livros;
ALTER TABLE autor RENAME autores;


ALTER TABLE autores ADD data_nascimento DATE;
ALTER TABLE autores MODIFY COLUMN name VARCHAR(100) UNIQUE NOT NULL;

ALTER TABLE autores DROP COLUMN data_nascimento;


CREATE TABLE authors (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    birth_date DATE
);

CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    custumer_id INT NOT NULL,
    product_sku VARCHAR(100) NOT NULL,
    product_description VARCHAR(100) NOT NULL,
    date date NOT NULL,
    price DECIMAL(10, 2) NOT NULL,

    CONSTRAINT fk_custumer_id FOREIGN KEY (custumer_id)
    REFERENCES customers(id)
);
