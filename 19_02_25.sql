CREATE DATABASE ventas;

USE ventas;

CREATE TABLE orden (
	idOrdenar int,
	vendedor int,
	fecha date,
	ccantidad int, 
	costo float
);

SHOW TABLES;

SELECT * FROM orden;

#Mostrar detalles de la tabla
DESC orden;

#Modificar campos (Agregar primaty key)
ALTER TABLE orden ADD PRIMARY KEY (idOrdenar);
ALTER TABLE orden MODIFY COLUMN idOrdenar INT PRIMARY KEY;

#Agregar campos
ALTER TABLE orden ADD COLUMN descripcion char;