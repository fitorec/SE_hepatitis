-- ---------------------------------------------------------------------
-- Análisis para los campos continuo
-- ---------------------------------------------------------------------

--
-- CAMPO 2 edad --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente a la edad";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `pacientes` WHERE edad IS NOT NULL;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	COUNT(id)/@muestra AS porcentaje,
	COUNT(id) AS muestras,
	SUM(edad) AS suma,
	AVG(edad) AS promedio,
	STD(edad) desviacion_estandar,
	AVG(edad) - STD(edad) AS cota_inferior,
	AVG(edad) + STD(edad) AS cota_superior
FROM `pacientes` WHERE 1
GROUP BY estado
ORDER BY estado DESC;

--
-- CAMPO 15 bilirrubina --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente a la bilirrubina";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `pacientes` WHERE bilirrubina IS NOT NULL;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	COUNT(id)/@muestra AS porcentaje,
	COUNT(id) AS muestras,
	SUM(bilirrubina) AS suma,
	AVG(bilirrubina) AS promedio,
	STD(bilirrubina) desviacion_estandar,
	AVG(bilirrubina) - STD(bilirrubina) AS cota_inferior,
	AVG(bilirrubina) + STD(bilirrubina) AS cota_superior
FROM `pacientes` WHERE 1
GROUP BY estado
ORDER BY estado DESC;

--
-- CAMPO 16 fosfato_alk --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente a la fosfato_alk";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `pacientes` WHERE fosfato_alk IS NOT NULL;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	COUNT(id)/@muestra AS porcentaje,
	COUNT(id) AS muestras,
	SUM(fosfato_alk) AS suma,
	AVG(fosfato_alk) AS promedio,
	STD(fosfato_alk) desviacion_estandar,
	AVG(fosfato_alk) - STD(fosfato_alk) AS cota_inferior,
	AVG(fosfato_alk) + STD(fosfato_alk) AS cota_superior
FROM `pacientes` WHERE 1
GROUP BY estado
ORDER BY estado DESC;

--
-- CAMPO 17 sgot --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente a la sgot";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `pacientes` WHERE sgot IS NOT NULL;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	COUNT(id)/@muestra AS porcentaje,
	COUNT(id) AS muestras,
	SUM(sgot) AS suma,
	AVG(sgot) AS promedio,
	STD(sgot) desviacion_estandar,
	AVG(sgot) - STD(sgot) AS cota_inferior,
	AVG(sgot) + STD(sgot) AS cota_superior
FROM `pacientes` WHERE 1
GROUP BY estado
ORDER BY estado DESC;

--
-- CAMPO 18 albumina --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente a la albumina";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `pacientes` WHERE albumina IS NOT NULL;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	COUNT(id)/@muestra AS porcentaje,
	COUNT(id) AS muestras,
	SUM(albumina) AS suma,
	AVG(albumina) AS promedio,
	STD(albumina) desviacion_estandar,
	AVG(albumina) - STD(albumina) AS cota_inferior,
	AVG(albumina) + STD(albumina) AS cota_superior
FROM `pacientes` WHERE 1
GROUP BY estado
ORDER BY estado DESC;

--
-- CAMPO 19 protime --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente a la protime";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `pacientes` WHERE protime IS NOT NULL;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	COUNT(id)/@muestra AS porcentaje,
	COUNT(id) AS muestras,
	SUM(protime) AS suma,
	AVG(protime) AS promedio,
	STD(protime) desviacion_estandar,
	AVG(protime) - STD(protime) AS cota_inferior,
	AVG(protime) + STD(protime) AS cota_superior
FROM `pacientes` WHERE 1
GROUP BY estado
ORDER BY estado DESC;
