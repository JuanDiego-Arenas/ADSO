-- * ---------- Creamos la Base de Datos ----------
CREATE DATABASE FACTURACION;

USE FACTURACION;

-- * ---------- Creamos la table Clientes ----------
CREATE TABLE clientes(
    id_cliente VARCHAR(255) UNIQUE PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    correo VARCHAR(255) UNIQUE NOT NULL,
    municipio VARCHAR(255),
    departamento VARCHAR(255),
    pais VARCHAR(255) CHECK (pais='Colombia'), -- CHECK permite limitar a una respuesta
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ? ---------- Inserción de CLIENTE ----------
INSERT INTO cliente (id_cliente, nombre, apellido, direccion, telefono, correo, municipio, departamento, pais)
VALUES
	('900876543-0', 'JUAN', 'GOMEZ', 'CALLE 13', '8608978', 'USER1@USER1.COM', 'QUEBRADAS', 'RISARALDA', 'COLOMBIA'),
	('800876543-0', 'CAMILO', 'VELEZ', 'CALLE 11', '87098765', 'USER2@USER2.COM', 'ORITO', 'PUTUMAYO', 'COLOMBIA'),
	('1077654345', 'JUANA', 'DE ARCO', 'CALLE 10', '861876567', 'USER3@USER3.COM', 'BOGOTÁ', 'CUNDINAMARCA', 'COLOMBIA');

-- * ---------- Creamos la table Productos ----------
CREATE TABLE productos(
    id_producto VARCHAR(255) UNIQUE PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    precio INT (25) NOT NULL, stock INT (25) NOT NULL,
    num_factura VARCHAR(255),
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (num_factura) REFERENCES factura(num_factura)
);

-- todo: No se insertan valores para la columna id_producto, debido a que, al ser llave foránea, estos valores deben primero crearse en la tabla original de productos.
-- ? ---------- PRODUCTOS ----------
INSERT INTO productos (id_producto, nombre, precio, stock, num_factura)
VALUES 
	('PRO-001', 'PORTÁTIL', '2800000', '70', 'A-001'),
	('PRO-002', 'TECLADO', '30000', '30', 'A-002'),
	('PRO-003', 'MOUSE', '15000', '20', 'A-003');


-- * ---------- Creamos la table Factura ----------
CREATE TABLE facturas(
    num_factura VARCHAR(255) UNIQUE PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_producto INT,
    creado TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
);

ALTER TABLE facturas ADD FOREIGN KEY(id_producto) REFERENCES productos(id_producto);

-- ? ---------- FACTURA ----------
INSERT INTO factura (num_factura, id_cliente)
VALUES ('A-001', '900876543-0');
INSERT INTO factura (num_factura, id_cliente)
VALUES ('A-002', '1077654345');
INSERT INTO factura (num_factura, id_cliente)
VALUES ('A-003', '800876543-0');

-- ? Ahora vamos a actualizar la columna id_producto de la tabla factura.
UPDATE factura SET id_producto = 'PRO-001' WHERE num_factura = 'A-001';
UPDATE factura SET id_producto = 'PRO-002' WHERE num_factura = 'A-002';
UPDATE factura SET id_producto = 'PRO-003' WHERE num_factura = 'A-003';