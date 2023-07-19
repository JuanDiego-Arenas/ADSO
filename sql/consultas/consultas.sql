-- posibles roles
-- CREATE TABLE roles (
--   id INT PRIMARY KEY,
--   nombre VARCHAR(50) NOT NULL
-- );
--  INSERT INTO roles (id, nombre) VALUES
--   (1, 'aprendiz'),
--   (2, 'instructor'),
--   (3, 'administrador');
 CREATE TABLE usuarios (
  id INT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL,
  id_rol ENUM('Aprendiz', 'Instructor', 'Administrador') NOT NULL
);

 INSERT INTO usuarios (id, nombre, email, id_rol)
 VALUES
  (1, 'Juan Perez', 'juan.perez@example.com', 1),
  (2, 'Maria Garcia', 'maria.garcia@example.com', 2),
  (3, 'Pedro Rodriguez', 'pedro.rodriguez@example.com', 3);

----------------------------------------------------------------------------

-- Con las tablas anteriores, vamos hacer las consultas de esta primera parte
SELECT * FROM oficina WHERE departamento LIKE 'Va%';

-- consulta por rango
SELECT id_oficina FROM oficina WHERE id_oficina BETWEEN 2 AND 4;

-- consulta por rango, y mostrando mas datos
SELECT id_oficina, departamento FROM oficina WHERE id_oficina BETWEEN 2 AND 9;

SELECT nombre, correo, cargo FROM empleado WHERE documento BETWEEN 10 AND 18;

SELECT nombre, empresa, departamento FROM cliente WHERE id_cliente BETWEEN 42 AND 49;

----------------------------------------------------------------------------

-- segunda parte de la guía 4
CREATE DATABASE CADPH;
USE CADPH;

CREATE TABLE titulada(
    id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nombre_apellido VARCHAR(255) UNIQUE NOT NULL,
    correo VARCHAR(255) UNIQUE NOT NULL,
    edad INT UNSIGNED NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    ciudad VARCHAR(255) NOT NULL,
    estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
    formación ENUM('Técnico', 'Tecnólogo') DEFAULT 'Tecnólogo',
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- Insertamos 20 datos
INSERT INTO Titulada (id, nombre_apellido, correo, edad, direccion, ciudad, estado, formación)
VALUES ...