-- ---------------------------------------------------------------------
-- Análisis para los campos continuo
-- ---------------------------------------------------------------------

--
-- CAMPO 2 edad --------------------------------------------------------
--

SELECT "Mostrando datos estadisticos referente a la edad";
SELECT @muestra := COUNT(id) FROM `paciente` WHERE edad IS NOT NULL;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	COUNT(id)/@muestra AS porcentaje,
	COUNT(id) AS muestras,
	SUM(edad) AS suma,
	AVG(edad) AS promedio,
	STD(edad) desviacion_estandar,
	VARIANCE(edad) varianza_estandar	
FROM `paciente` WHERE 1
GROUP BY estado
ORDER BY estado DESC;
