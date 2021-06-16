/*Aquí cree la Base de Datos con la tablas solicitadas*/
/*En parte final dejo las consultas solicitadas*/
/*Los datos del Excel fueron importados desde MySQL Workbench, La BD exportada la pongo el script "TestDevJrSQL"*/

CREATE DATABASE testDevJr;
USE testDevJr;

CREATE TABLE logDial (
	idLlamada VARCHAR(10) PRIMARY KEY,
    fechaDeLlamada DATETIME,
    tiempoDialogo  SMALLINT,
    telefono VARCHAR(10),
    tipoDeLlamada VARCHAR(15)
);

CREATE TABLE costos (
	tipoDeLlamada VARCHAR(15) PRIMARY KEY,
    costo DECIMAL(10,4)
);

/*Que muestre los registros con tipo de llamada Cel LD durante el mes febrero*/
SELECT * FROM logDial WHERE tipoDeLlamada = 'Cel LD' AND MONTH(fechaDeLlamada) = '02';

/*Que indique el promedio de tiempo de dialogo de las llamadas con tipo Cel LD durante el mes de febrero*/
SELECT AVG(tiempoDialogo) AS Promedio FROM logDial WHERE tipoDeLlamada = 'Cel LD' AND MONTH(fechaDeLlamada) = '02';

/*Que muestre el número en minutos de dialogo (tomando tiempoDialogo que está en segundos) y el costo de todas las llamadas del mes de enero*/
SELECT (tiempoDialogo/60) AS TiempoMin, (costo * (tiempoDialogo/60)) AS CostoTotal FROM logDial L, costos C WHERE MONTH(fechaDeLlamada) = '01' AND L.tipoDeLlamada = C.tipoDeLlamada;

