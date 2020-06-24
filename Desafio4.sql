CREATE TABLE Libro(
		codigo INT,
		titulo VARCHAR(50) NOT NULL,
		autor VARCHAR(50) NOT NULL,
		editorial VARCHAR(50) NOT NULL,
		PRIMARY KEY(codigo));

--NO SE CREA UNA TABLA DE LECTOR, PORQUE NO HAY MÁS ATRIBUTOS QUE EL NOMBRE
--NO SE ASUMEN DATOS QUE NO APARECEN EN LA TABLA (COMO PODRÍA SER "FECHA DE PRÉSTAMO")

CREATE TABLE Arriendo(
		id_arriendo SERIAL,
		codigo_libro INT NOT NULL,
		fecha_devolucion DATE NOT NULL,
		nombre_lector VARCHAR(50) NOT NULL,
		PRIMARY KEY(id_arriendo),
		FOREIGN KEY(codigo_libro) REFERENCES 
		Libro(codigo));

		
