CREATE TABLE Libro(
		codigo INT,
		titulo VARCHAR(50) NOT NULL,
		PRIMARY KEY(codigo));

CREATE TABLE Autor(
		id_autor SERIAL,
		Nombre_autor VARCHAR(50) NOT NULL,
		PRIMARY KEY(id_autor));

CREATE TABLE Lector(
		id_lector SERIAL,
		Nombre_1 VARCHAR(30) NOT NULL,
		Nombre_2 VARCHAR(30),
		Apellido_1 VARCHAR(30),
		Apellido_2 VARCHAR(30),
		PRIMARY KEY(id_lector));

CREATE TABLE Editorial(
		id_editorial SERIAL,
		Nombre VARCHAR(30) NOT NULL,
		PRIMARY KEY(id_editorial));

CREATE TABLE Arrendado_por(
		codigo_libro INT,
		id_lector INT,
		fecha_devolucion DATE NOT NULL,
		PRIMARY KEY(codigo_libro, id_lector),
		FOREIGN KEY(codigo_libro) REFERENCES 
		Libro(codigo),
		FOREIGN KEY(id_lector) REFERENCES
		Lector(id_lector));

CREATE TABLE Es_editado(
		Libro INT,
		Editorial INT,
		PRIMARY KEY (Libro, Editorial),
		FOREIGN KEY (Libro) REFERENCES
		Libro(codigo),
		FOREIGN KEY (Editorial) REFERENCES
		Editorial(id_editorial));		

CREATE TABLE Es_escrito(
		Codigo_libro INT,
		Id_autor INT,
		PRIMARY KEY(Codigo_libro, Id_autor),
		FOREIGN KEY (Codigo_libro) REFERENCES
		Libro(codigo),
		FOREIGN KEY (Id_autor) REFERENCES
		Autor(id_autor));
