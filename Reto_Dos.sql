--1. ¿Cuál es el nombre aeropuerto que ha tenido mayor movimiento durante el año?
SELECT MAX(MOVIMIENTOS) as MOVIMIENTOS, NOMBRE_AEROPUERTO from

(SELECT count(*) as MOVIMIENTOS, NOMBRE_AEROPUERTO FROM vuelos v LEFT JOIN aeropuertos a ON v.ID_AEROPUERTO = a.ID_AEROPUERTO GROUP BY NOMBRE_AEROPUERTO);



--2. ¿Cuál es el nombre aerolínea que ha realizado mayor número de vuelos durante el año?

SELECT MAX(VUELOS) as VUELOS, NOMBRE_AEROLINEA from

(SELECT count(*) as VUELOS, NOMBRE_AEROLINEA FROM vuelos v LEFT JOIN aerolineas a ON v.ID_AEROLINEA = a.ID_AEROLINEA GROUP BY NOMBRE_AEROLINEA);



--3. ¿En qué día se han tenido mayor número de vuelos?

SELECT count(DIA) as VUELOS, DIA FROM vuelos GROUP BY DIA;



--4. ¿Cuáles son las aerolíneas que tienen mas de 2 vuelos por día?

SELECT count(*) as VUELOS, NOMBRE_AEROLINEA FROM vuelos v LEFT JOIN aerolineas a ON v.ID_AEROLINEA = a.ID_AEROLINEA GROUP BY NOMBRE_AEROLINEA;


