-- Comandos SQL

-- Primero listamos todas las base de datos que tenemos
SHOW DATABASES;

-- CREATE DATABASE nos permite crear una base de datos
CREATE DATABASE <db>;

-- Para entrar a la base de datos:
USE <nombre de la base de datos>;

-- Usamos "SHOW TABLES;" para listar las tablas dentro de la base de datos
SHOW TABLES;

-- Crear una tabla
CREATE TABLE aprendices(
    id INT,
    nombre_usuario VARCHAR (255),
    correo VARCHAR (255),
    edad INT,
    estado ENUM('Activo', 'Inactivo'),
    intereses VARCHAR(255),
    creado TIMESTAMP
);

-- Si usamos "DESC <nombre de la tabla>;" nos va a mostrar como está creada la tabla, cantidad de columnas, tipos de datos etc.
DESC aprendices;

-- "DROP TABLE <nombre de la tabla>" se usa para eliminar una tabla existente en la db.
DROP TABLE estudiantes;


CREATE TABLE aprendices(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_usuario VARCHAR(255) UNIQUE NOT NULL,
    edad INT UNSIGNED NOT NULL,
    estado ENUM('Activo', 'Inactivo') DEFAULT 'Inactivo',
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Ingresar datos a la tabla.
INSERT INTO nombre tabla (columna1, columna2, ...)
VALUES ('valor1', 'valor2', ...);

INSERT INTO aprendices (nombre_usuario, edad, estado)
VALUES ('Juan Diego', '20', 'Activo');

-- Para mostrar los datos ingresados usamos "SELECT * FROM <Nombre de la tabla>"
SELECT * FROM aprendices;
