-- these structures are purely intended to be didactical, a lot of details were let aside

CREATE DATABASE `order`;

USE `order`;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birth_date DATE
);

CREATE TABLE orders (
    id INT PRIMARY KEY,
    custumer_id INT NOT NULL,
    product_sku VARCHAR(100) NOT NULL,
    product_description VARCHAR(100) NOT NULL,
    date date NOT NULL,
    price DECIMAL(10, 2) NOT NULL,

    CONSTRAINT fk_custumer_id FOREIGN KEY (custumer_id)
    REFERENCES customers(id)
);
