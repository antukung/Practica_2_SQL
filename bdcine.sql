/*Usamos la base de datos de siempre*/

CREATE DATABASE primer_tabla; /*CREAMOS LA BASE DE DATOS*/

SHOW DATABASE;

USE primer_tabla;

SHOW TABLES;

/* Creamos la tabla*/

CREATE TABLE cine (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Pelicula VARCHAR (255) NOT NULL,
    Anio_estreno INT,
    Recaudacion_millones DECIMAL,
    Director VARCHAR (255),
    Plataforma_estreaming VARCHAR (255)
);

/*Ya creamos la tabla ahora pasamos a cargar las peliculas*/

INSERT INTO cine (Pelicula, Anio_estreno, Recaudacion_millones, Director, Plataforma_estreaming )
VALUES ('Rapido y Fuiroso 10', 2023, 340 , 'Louis Leterrier',  '');

INSERT INTO cine (Pelicula, Anio_estreno, Recaudacion_millones, Director, Plataforma_estreaming )
VALUES ('El Laberinto del Fauno', 2006, 83.9 , 'Guilliermo del Toro',  'Netflix');

INSERT INTO cine (Pelicula, Anio_estreno, Recaudacion_millones, Director, Plataforma_estreaming )
VALUES ('Batman Eternamente', 1995, 336.6 , 'Joel Schumacher',  'Prime Video');

SELECT * FROM  cine;

/*Ahora agregamos otra columna con un boolenao*/

UPDATE cine
SET Plataforma_estreaming='no tiene'
WHERE Plataforma_estreaming='';

UPDATE cine
SET Plataforma_estreaming = NULL
WHERE Plataforma_estreaming = 'no tiene';

ALTER TABLE cine
ADD Tienen_estriming BOOLEAN;

UPDATE cine 
SET Tienen_estriming = CASE WHEN Plataforma_estreaming IS NOT NULL THEN TRUE ELSE FALSE END;

SELECT * FROM  cine;

/*Ahora agregamos dos peliculas mas*/

INSERT INTO cine (Pelicula, Anio_estreno, Recaudacion_millones, Director, Plataforma_estreaming )
VALUES ('Jurasic Park', 1993, 1029 , 'Steven Spielberg',  NULL);

INSERT INTO cine (Pelicula, Anio_estreno, Recaudacion_millones, Director, Plataforma_estreaming )
VALUES ('Naruto Shippuden La Pelicula', 2007 , 8.5 , 'Hajime Kamegaki',  'Netflix');

UPDATE cine 
SET Tienen_estriming = CASE WHEN Plataforma_estreaming IS NOT NULL THEN TRUE ELSE FALSE END;

SELECT * FROM  cine;







