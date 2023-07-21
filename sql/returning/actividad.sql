CREATE DATABASE modulo_ADSO;
USE modulo_adso;

--? Creamos las tablas, con sus respectivas relaciones e inserciones
--! ---------- Tabla Clientes ----------
CREATE TABLE clientes(
    id_cliente INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO clientes(nombre, apellido, direccion, telefono, email)
VALUES
    ('Juan Diego', 'Arenas Cuellar', 'Calle 9a #13-54', '3202767813', 'arenas9094@gmail.com'),
    ('Diego', 'Polo Home', 'Vereda Santamarta', '392743782', 'polo@hotmail.com'),
    ('Luis Carlos', 'Vargas Oviedo', 'Calle 9a #13-59', '3293625380', 'elver@gmail.com'),
    ('Jose Sebastian', 'Arciniegas Vargas', 'Carrera 3b #27-5a', '3146278153', 'josesebastian@hotmail.com'),
    ('Julian David', 'Pava Ospina', 'Calle 14a-bis #48-34', '3139728093', 'julian5550120@gmail.com'),
    ('Juan Fernando', 'Calderon', 'Calle 9a #13-54', '3206767813', 'fernando@gmail.com'),
    ('Camilo', 'Chavarro', 'Calle 18 casa20', '392743082', 'camilo@hotmail.com'),
    ('Luis', 'Oviedo', 'Carrera 8 #59-8', '3297625380', 'luis@gmail.com'),
    ('Pablo', 'Vargas', 'Carrera 3b #27-5a', '3176270153', 'perro@hotmail.com'),
    ('David', 'Hernandez', 'Calle 04 #34', '3139728013', '5550120@gmail.com');


--! ---------- Tabla Ventas ----------
CREATE TABLE ventas(
    id_venta INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_venta VARCHAR(255) NOT NULL,
    total_venta VARCHAR(255) NOT NULL,
    FOREIGN kEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO ventas(id_cliente, fecha_venta, total_venta)
VALUES
    (2, '27/07/2023', '100000'),
    (7, '19/09/2023', '240000'),
    (10, '14/09/2022', '750000'),
    (1, '15/11/2022', '7557000'),
    (3, '11/04/2023', '1700000'),
    (4, '08/09/2022', '320000'),
    (6, '08/01/2023', '4500000'),
    (5, '30/06/2023', '375000'),
    (8, '11/12/2022', '60000'),
    (9, '21/07/2023', '2000000');

--! ---------- Tabla Productos ----------
CREATE TABLE productos(
    id_producto INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio VARCHAR(255) NOT NULL
);

INSERT INTO productos(nombre, descripcion, precio)
VALUES
    ('Camiseta', 'Camiseta de algodón para hombres', '50000'),
    ('Pantalón', 'Pantalón de mezclilla para mujeres', '80000'),
    ('Zapatos deportivos', 'Zapatos deportivos para correr', '120000'),
    ('Reloj', 'Reloj de pulsera con correa de cuero', '150000'),
    ('Bolso', 'Bolso de mano para mujeres', '60000'),
    ('Gafas de sol', 'Gafas de sol con protección UV', '75000'),
    ('Teléfono móvil', 'Teléfono móvil de última generación', '1700000'),
    ('Cámara digital', 'Cámara digital de alta resolución', '500000'),
    ('iPad pro', 'Tableta con pantalla táctil', '2519000'),
    ('Televisor', 'Televisor LED de 55 pulgadas', '1500000');

--! ---------- Tabla Detalles de Ventas ----------
CREATE TABLE det_ventas(
    id_detalle INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad VARCHAR(255) NOT NULL,
    precio_unitario VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

INSERT INTO det_ventas(id_venta, id_producto, cantidad, precio_unitario)
VALUES
    (1, 1, 2, 50000),
    (2, 3, 2, 120000),
    (3, 4, 5, 150000),
    (4, 9, 3, 2519000),
    (5, 7, 1, 1700000),
    (6, 2, 4, 80000),
    (7, 10, 3, 1500000),
    (8, 6, 5, 75000),
    (9, 5, 1, 60000),
    (10, 8, 4, 500000);

--? ---------- Ejercicios ----------
UPDATE productos
SET nombre='Arroz', descripcion='Libra de Arroz FlorHuila', precio='2400'
WHERE id_producto = 1