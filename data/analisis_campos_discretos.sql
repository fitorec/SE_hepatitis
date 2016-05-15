-- ---------------------------------------------------------------------
-- Análisis para los campos discretos del tipo booleanos: 3-14 y 20
-- ---------------------------------------------------------------------

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

-- probabilidad condicional muerto dado hombre
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND sexo = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_hombre FROM paciente
	WHERE sexo = 1;
-- probabilidad condicional muerto dado mujer
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND sexo = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_mujer FROM paciente
	WHERE sexo = 2;
--
-- CAMPO 4 esteroides --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al esteroides";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE esteroides IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(esteroides, 1, 'No'), 2, 'Si') AS esteroides,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 2
GROUP BY esteroides
ORDER BY esteroides DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(esteroides, 1, 'No'), 2, 'Si') AS esteroides,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE esteroides IS NOT NULL AND estado = 1
GROUP BY esteroides
ORDER BY esteroides DESC;

-- Probabilidad condicional: muerto dado esteroides NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND esteroides = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_esteroides_no FROM paciente
	WHERE esteroides = 1;
-- Probabilidad condicional: muerto dado esteroides SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND esteroides = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_esteroides_si FROM paciente
	WHERE esteroides = 2;

--
-- CAMPO 5 antivirales --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al antivirales";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE antivirales IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(antivirales, 1, 'No'), 2, 'Si') AS antivirales,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 2
GROUP BY antivirales
ORDER BY antivirales DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(antivirales, 1, 'No'), 2, 'Si') AS antivirales,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE antivirales IS NOT NULL AND estado = 1
GROUP BY antivirales
ORDER BY antivirales DESC;

-- Probabilidad condicional: muerto dado antivirales NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND antivirales = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_antivirales_no FROM paciente
	WHERE antivirales = 1;
-- Probabilidad condicional: muerto dado antivirales SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND antivirales = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_antivirales_si FROM paciente
	WHERE antivirales = 2;

-- 
-- CAMPO 6 fatiga --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al fatiga";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE fatiga IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(fatiga, 1, 'No'), 2, 'Si') AS fatiga,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 2
GROUP BY fatiga
ORDER BY fatiga DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(fatiga, 1, 'No'), 2, 'Si') AS fatiga,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE fatiga IS NOT NULL AND estado = 1
GROUP BY fatiga
ORDER BY fatiga DESC;

-- Probabilidad condicional: muerto dado fatiga NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND fatiga = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_fatiga_no FROM paciente
	WHERE fatiga = 1;
-- Probabilidad condicional: muerto dado fatiga SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND fatiga = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_fatiga_si FROM paciente
	WHERE fatiga = 2;
-- 
-- CAMPO 7 malestar --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al malestar";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE malestar IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE malestar IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE malestar IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(malestar, 1, 'No'), 2, 'Si') AS malestar,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE malestar IS NOT NULL AND estado = 2
GROUP BY malestar
ORDER BY malestar DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(malestar, 1, 'No'), 2, 'Si') AS malestar,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE malestar IS NOT NULL AND estado = 1
GROUP BY malestar
ORDER BY malestar DESC;

-- Probabilidad condicional: muerto dado malestar NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND malestar = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_malestar_no FROM paciente
	WHERE malestar = 1;
-- Probabilidad condicional: muerto dado malestar SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND malestar = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_malestar_si FROM paciente
	WHERE malestar = 2;

-- 
-- CAMPO 8 anorexia --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al anorexia";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE anorexia IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(anorexia, 1, 'No'), 2, 'Si') AS anorexia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 2
GROUP BY anorexia
ORDER BY anorexia DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(anorexia, 1, 'No'), 2, 'Si') AS anorexia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE anorexia IS NOT NULL AND estado = 1
GROUP BY anorexia
ORDER BY anorexia DESC;

-- Probabilidad condicional: muerto dado anorexia NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND anorexia = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_anorexia_no FROM paciente
	WHERE anorexia = 1;
-- Probabilidad condicional: muerto dado anorexia SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND anorexia = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_anorexia_si FROM paciente
	WHERE anorexia = 2;

--
-- CAMPO 9 higado_grande --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al higado_grande";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE higado_grande IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(higado_grande, 1, 'No'), 2, 'Si') AS higado_grande,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 2
GROUP BY higado_grande
ORDER BY higado_grande DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(higado_grande, 1, 'No'), 2, 'Si') AS higado_grande,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_grande IS NOT NULL AND estado = 1
GROUP BY higado_grande
ORDER BY higado_grande DESC;

-- Probabilidad condicional: muerto dado higado_grande NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND higado_grande = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_higado_grande_no FROM paciente
	WHERE higado_grande = 1;
-- Probabilidad condicional: muerto dado higado_grande SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND higado_grande = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_higado_grande_si FROM paciente
	WHERE higado_grande = 2;

-- 
-- CAMPO 10 higado_firme --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al higado_firme";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE higado_firme IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(higado_firme, 1, 'No'), 2, 'Si') AS higado_firme,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 2
GROUP BY higado_firme
ORDER BY higado_firme DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(higado_firme, 1, 'No'), 2, 'Si') AS higado_firme,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE higado_firme IS NOT NULL AND estado = 1
GROUP BY higado_firme
ORDER BY higado_firme DESC;

-- Probabilidad condicional: muerto dado higado_firme NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND higado_firme = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_higado_firme_no FROM paciente
	WHERE higado_firme = 1;
-- Probabilidad condicional: muerto dado higado_firme SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND higado_firme = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_higado_firme_si FROM paciente
	WHERE higado_firme = 2;

-- 
-- CAMPO 11 bazo_palpable --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al bazo_palpable";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE bazo_palpable IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(bazo_palpable, 1, 'No'), 2, 'Si') AS bazo_palpable,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 2
GROUP BY bazo_palpable
ORDER BY bazo_palpable DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(bazo_palpable, 1, 'No'), 2, 'Si') AS bazo_palpable,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE bazo_palpable IS NOT NULL AND estado = 1
GROUP BY bazo_palpable
ORDER BY bazo_palpable DESC;

-- Probabilidad condicional: muerto dado bazo_palpable NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND bazo_palpable = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_bazo_palpable_no FROM paciente
	WHERE bazo_palpable = 1;
-- Probabilidad condicional: muerto dado bazo_palpable SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND bazo_palpable = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_bazo_palpable_si FROM paciente
	WHERE bazo_palpable = 2;

--
-- CAMPO 12 aranias --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al aranias";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE aranias IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE aranias IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE aranias IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(aranias, 1, 'No'), 2, 'Si') AS aranias,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE aranias IS NOT NULL AND estado = 2
GROUP BY aranias
ORDER BY aranias DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(aranias, 1, 'No'), 2, 'Si') AS aranias,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE aranias IS NOT NULL AND estado = 1
GROUP BY aranias
ORDER BY aranias DESC;

-- Probabilidad condicional: muerto dado aranias NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND aranias = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_aranias_no FROM paciente
	WHERE aranias = 1;
-- Probabilidad condicional: muerto dado aranias SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND aranias = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_aranias_si FROM paciente
	WHERE aranias = 2;

-- 
-- CAMPO 13 ascitis --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al ascitis";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE ascitis IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(ascitis, 1, 'No'), 2, 'Si') AS ascitis,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 2
GROUP BY ascitis
ORDER BY ascitis DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(ascitis, 1, 'No'), 2, 'Si') AS ascitis,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE ascitis IS NOT NULL AND estado = 1
GROUP BY ascitis
ORDER BY ascitis DESC;

-- Probabilidad condicional: muerto dado ascitis NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND ascitis = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_ascitis_no FROM paciente
	WHERE ascitis = 1;
-- Probabilidad condicional: muerto dado ascitis SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND ascitis = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_ascitis_si FROM paciente
	WHERE ascitis = 2;

-- 
-- CAMPO 14 varices --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al varices";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE varices IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE varices IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE varices IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(varices, 1, 'No'), 2, 'Si') AS varices,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE varices IS NOT NULL AND estado = 2
GROUP BY varices
ORDER BY varices DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(varices, 1, 'No'), 2, 'Si') AS varices,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE varices IS NOT NULL AND estado = 1
GROUP BY varices
ORDER BY varices DESC;

-- Probabilidad condicional: muerto dado varices NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND varices = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_varices_no FROM paciente
	WHERE varices = 1;
-- Probabilidad condicional: muerto dado varices SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND varices = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_varices_si FROM paciente
	WHERE varices = 2;

-- 
-- CAMPO 20 histologia --------------------------------------------------------
--
SELECT "Mostrando datos estadisticos referente al histologia";
SELECT @muestra := COUNT(id) AS muestras_validas FROM `paciente` WHERE histologia IS NOT NULL;
SELECT @num_vivos := COUNT(id) FROM `paciente` WHERE histologia IS NOT NULL AND estado = 2;
SELECT @num_muertos := COUNT(id) FROM `paciente` WHERE histologia IS NOT NULL AND estado = 1;

SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(histologia, 1, 'No'), 2, 'Si') AS histologia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_vivos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE histologia IS NOT NULL AND estado = 2
GROUP BY histologia
ORDER BY histologia DESC;


SELECT
	REPLACE(REPLACE(estado, 1, 'muerto'), 2, 'vivo') AS estado,
	REPLACE(REPLACE(histologia, 1, 'No'), 2, 'Si') AS histologia,
	COUNT(id) AS muestras,
	COUNT(id)/@num_muertos AS prob,
	COUNT(id)/@muestra AS prob_total
FROM `paciente` WHERE histologia IS NOT NULL AND estado = 1
GROUP BY histologia
ORDER BY histologia DESC;

-- Probabilidad condicional: muerto dado histologia NO(1)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND histologia = 1;
SELECT @num_union/COUNT(id) AS muerto_dado_histologia_no FROM paciente
	WHERE histologia = 1;
-- Probabilidad condicional: muerto dado histologia SI(2)
SELECT @num_union := count(id) FROM paciente
	WHERE estado = 1 AND histologia = 2;
SELECT @num_union/COUNT(id) AS muerto_dado_histologia_si FROM paciente
	WHERE histologia = 2;
