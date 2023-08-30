CREATE DATABASE IF NOT EXISTS saga;

USE saga;

CREATE TABLE IF NOT EXISTS formacion (
    ficha VARCHAR(255) PRIMARY KEY, -- La ficha de cada formación es única
    nombre VARCHAR(255) NOT NULL, 
    tipo ENUM('Técnico', 'Tecnólogo', 'Auxiliar', 'Curso corto') NOT NULL,
    jornada ENUM('Mañana', 'Tarde', 'Noche') NOT NULL,
);

CREATE TABLE IF NOT EXISTS ambiente (
    numero_amb VARCHAR(255) PRIMARY KEY,
    cede ENUM('Principal', 'Alterna')
);

CREATE TABLE IF NOT EXISTS aprendiz (
  apr_id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  apellido VARCHAR(255) NOT NULL,
  cedula VARCHAR(255) NOT NULL UNIQUE,
  correo VARCHAR(255) NOT NULL,
  celular VARCHAR(255) NULL,
  user VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS administrador (
  admin_id INT AUTO_INCREMENT PRIMARY KEY,
  cedula VARCHAR(255) NOT NULL UNIQUE,
  nombre VARCHAR(255) NOT NULL,
  apellido VARCHAR(255) NOT NULL,
  correo VARCHAR(255) NOT NULL,
  celular VARCHAR(255) NULL,
  user VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);



