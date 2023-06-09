-- Creamos la base de datos
CREATE DATABASE sena;

-- 
USE sena;

CREATE TABLE aprendices(
    id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
    nombre VARCHAR (255) UNIQUE NOT NULL,
    correo VARCHAR (255) UNIQUE NOT NULL,
    edad INT UNSIGNED NOT NULL,
    direccion VARCHAR (255) NOT NULL,
    ciudad VARCHAR(255) NOT NULL,
    estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Marcos', 'correoexample@gmail.com', 19, 'Calle 12-5', 'Garzón', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Daniel', 'daniel@gmail.com', 19, 'Calle 12-f5', 'Neiva', 2);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Jimy', 'lombana@sena.edu.co', 32, 'Carrera 12-03', 'Garzón', 2);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Eliana ', 'eliana@sena.edu.co', 27, 'Calle 19-4A', 'Neiva', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Hector David', 'hdtoledo@sena.edu.co', 50, 'Carrera 1e-5', 'Garzón', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Juan', '5345@hotmail.com', 23, 'Carrera 123-51w', 'Pitalito', 2);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Fenando Daniel', 'sena@sena.edu.co', 21, 'Calle 12-5', 'Cali', 2);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Juan Fernando', 'qwerty@hotmail.com', 30, 'Calle 12-5', 'Pitalito', 2);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Oscar', 'sena1@outlook.com', 24, 'Carrera 12-5', 'Cali', 2);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Frank', 'sena@gmail.com', 34, 'Carrera 12-5', 'Cali', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Diomedes', 'arenas@gmail.com', 23, 'Calle 12-5', 'Cali', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Pedro', 'cuellar@outlook.com', 32, 'Carrera 2d-5', 'Bogotá', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('Pablo', 'tv@outlook.com', 37, 'Calle 76-35', 'Ibague', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('sena', 'sena-garzon@sena.edu.co', 29, 'Carrera 35-5q', 'Bogotá', 1);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('tableros', 'silla-casa@outlook.com', 54, 'Calle 1s2-5d', 'Bogotá', 2);

INSERT INTO aprendices( nombre, correo, edad, direccion, ciudad, estado)
VALUES('iMac', 'mase-casa@hotmail.com', 25, 'Carrera 12-5', 'Ibague', 1);

-- Sentencias de consultas Query's
SELECT id FROM aprendices;

SELECT nombre, edad FROM aprendices;

SELECT nombre, edad, estado FROM aprendices;

-- Cambiando el aspecto visual del select.
SELECT id FROM aprendices\G;

SELECT nombre, edad FROM aprendices\G;

SELECT nombre, edad, estado FROM aprendices\G;

SELECT * FROM aprendices\G;

-- Sentencia "WHERE"
SELECT * FROM aprendices WHERE id = 10;

SELECT * FROM aprendices WHERE correo = 'eliana@sena.edu.co';

SELECT * FROM aprendices WHERE edad >= 24;

SELECT * FROM aprendices WHERE creado >= '2023-06-09 10:44:56';

SELECT * FROM aprendices WHERE id IN (10, 3, 4, 5, 14);

-- Sentencia "ORDER BY"
SELECT * FROM aprendices ORDER BY edad;

SELECT * FROM aprendices ORDER BY edad DESC;