-- ---------------------------------------------------------------------
-- Análisis para los campos continuo
-- ---------------------------------------------------------------------

--
-- CAMPO 2 edad --------------------------------------------------------
--

SELECT "Mostrando datos estadisticos referente a la edad";

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	SUM(edad) AS suma_edad,	
	COUNT(id) AS muestras,
	AVG(edad) AS promedio,
	VARIANCE(edad) varianza_estandar
FROM `paciente` WHERE 1
GROUP BY estado
ORDER BY estado DESC;
