

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10, 2),
    stock INT
);

CREATE DATABASE mi_base_de_datos;


ALTER TABLE clientes
ADD telefono VARCHAR(15);

ALTER TABLE productos
ADD fecha_creacion DATE;


ALTER TABLE clientes
ADD CONSTRAINT unique_email UNIQUE (email);


