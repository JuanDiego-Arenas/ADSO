CREATE DATABASE IF NOT EXISTS crud;

USE crud;

CREATE TABLE IF NOT EXISTS categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_categoria VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS marcas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_marca VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    id_categoria INT NOT NULL,
    id_marca INT NOT NULL,
    precio VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id),
    FOREIGN KEY (id_marca) REFERENCES marcas(id)
);

INSERT INTO categorias (nombre_categoria)
VALUES
    ('Celular'),
    ('Laptop'),
    ('Gaseosa');

INSERT INTO marcas (nombre_marca)
VALUES
    ('postobon'),
    ('Mac'),
    ('Tecno');

INSERT INTO productos (id_categoria, id_marca, precio, descripcion, nombre)
VALUES
    (1, 3, '$500.000', 'Celular de ultima generación', 'TecnoSpark go 2022'),
    (2, 2, "$7'000.000", 'Mac con procesador M2 de ultima generación', 'MacBook'),
    (3, 1, '$2.000', 'gaseosa de 400ml', 'Manzana');