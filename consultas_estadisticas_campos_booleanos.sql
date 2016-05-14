--
-- CAMPO 2 EDAD --------------------------------------------------------
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

--
-- CAMPO 3 SEXO --------------------------------------------------------
--

SELECT "Mostrando datos estadisticos referente al genero";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE sexo IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE sexo IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE sexo IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(sexo, 1, 'hombre'), 2, 'mujer') AS sexo,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE sexo IS NOT NULL AND estado = 2
GROUP BY sexo
ORDER BY sexo DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(sexo, 1, 'hombre'), 2, 'mujer') AS sexo,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE sexo IS NOT NULL AND estado = 1
GROUP BY sexo
ORDER BY sexo DESC;

--
-- CAMPO 4 esteroides --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al esteroides";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE esteroides IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	esteroides,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 2
GROUP BY esteroides
ORDER BY esteroides DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	esteroides,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 1
GROUP BY esteroides
ORDER BY esteroides DESC;

--
-- CAMPO 5 antivirales --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al antivirales";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE antivirales IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	antivirales,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 2
GROUP BY antivirales
ORDER BY antivirales DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	antivirales,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 1
GROUP BY antivirales
ORDER BY antivirales DESC;

-- 
-- CAMPO 6 fatiga --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al fatiga";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE fatiga IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	fatiga,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 2
GROUP BY fatiga
ORDER BY fatiga DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	fatiga,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 1
GROUP BY fatiga
ORDER BY fatiga DESC;

-- 
-- CAMPO 7 malestar --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al malestar";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE malestar IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE malestar IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE malestar IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	malestar,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE malestar IS NOT NULL AND estado = 2
GROUP BY malestar
ORDER BY malestar DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	malestar,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE malestar IS NOT NULL AND estado = 1
GROUP BY malestar
ORDER BY malestar DESC;

-- 
-- CAMPO 8 anorexia --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al anorexia";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE anorexia IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	anorexia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 2
GROUP BY anorexia
ORDER BY anorexia DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	anorexia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 1
GROUP BY anorexia
ORDER BY anorexia DESC;

-- 
-- CAMPO 9 higado_grande --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al higado_grande";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE higado_grande IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	higado_grande,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 2
GROUP BY higado_grande
ORDER BY higado_grande DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	higado_grande,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 1
GROUP BY higado_grande
ORDER BY higado_grande DESC;

-- 
-- CAMPO 10 higado_firme --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al higado_firme";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE higado_firme IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	higado_firme,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 2
GROUP BY higado_firme
ORDER BY higado_firme DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	higado_firme,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 1
GROUP BY higado_firme
ORDER BY higado_firme DESC;


-- 
-- CAMPO 11 bazo_palpable --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al bazo_palpable";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE bazo_palpable IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	bazo_palpable,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 2
GROUP BY bazo_palpable
ORDER BY bazo_palpable DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	bazo_palpable,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 1
GROUP BY bazo_palpable
ORDER BY bazo_palpable DESC;

-- 
-- CAMPO 12 aranias --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al aranias";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE aranias IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE aranias IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE aranias IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	aranias,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE aranias IS NOT NULL AND estado = 2
GROUP BY aranias
ORDER BY aranias DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	aranias,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE aranias IS NOT NULL AND estado = 1
GROUP BY aranias
ORDER BY aranias DESC;

-- 
-- CAMPO 13 ascitis --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al ascitis";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE ascitis IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	ascitis,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 2
GROUP BY ascitis
ORDER BY ascitis DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	ascitis,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 1
GROUP BY ascitis
ORDER BY ascitis DESC;


-- 
-- CAMPO 14 varices --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al varices";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE varices IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE varices IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE varices IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	varices,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE varices IS NOT NULL AND estado = 2
GROUP BY varices
ORDER BY varices DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	varices,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE varices IS NOT NULL AND estado = 1
GROUP BY varices
ORDER BY varices DESC;

-- 
-- CAMPO 20 histologia --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al histologia";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE histologia IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE histologia IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE histologia IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	histologia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE histologia IS NOT NULL AND estado = 2
GROUP BY histologia
ORDER BY histologia DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	histologia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE histologia IS NOT NULL AND estado = 1
GROUP BY histologia
ORDER BY histologia DESC;

