CREATE DATABASE modulo_ADSO;
USE modulo_adso;

-- creamos las tablas, con sus respectivas relaciones
CREATE TABLE cliente(
    id_cliente INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE ventas(
    id_venta INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_venta VARCHAR(255) NOT NULL,
    total_venta VARCHAR(255) NOT NULL,
    FOREIGN kEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE productos(
    id_producto INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio VARCHAR(255) NOT NULL
);

CREATE TABLE det_ventas(
    id_detalle INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    id_producto INT NOT NULL,
    cantidad VARCHAR(255) NOT NULL,
    precio_unitario VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);
