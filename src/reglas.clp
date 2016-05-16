;
;	(load "/home/fitorec/Documentos/utm/PROYECTO/src/reglas.clp")


; campo 3 Sexo
(defrule sexo_1
	?f <- (paciente (estado ?edo) (sexo 1) (sexo_1_checked 0))
	=>
	(printout t "3- run sexo_1 " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.017))
	(modify ?f (estado ?nuevo_edo) (sexo_1_checked 1))
)
; ---------------------------------------------------------------------
; esteroides campo 4
(defrule esteroides
	?f <- (paciente (estado ?edo) (esteroides 1) (esteroides_checked 0))
	=>
	(printout t "4- run esteroides " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.05))
	(modify ?f (estado ?nuevo_edo) (esteroides_checked 1))
)

; ---------------------------------------------------------------------
; antivirales campo 5
(defrule antivirales
	?f <- (paciente (estado ?edo) (antivirales 2) (antivirales_checked 0))
	=>
	(printout t "5- run antivirales " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.060))
	(modify ?f (estado ?nuevo_edo) (antivirales_checked 1))
)

; ---------------------------------------------------------------------
; fatiga campo 6
(defrule fatiga
	?f <- (paciente (estado ?edo) (fatiga 1) (fatiga_checked 0))
	=>
	(printout t "6- run fatiga " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.001))
	(modify ?f (estado ?nuevo_edo) (fatiga_checked 1))
)

; ---------------------------------------------------------------------
; malestar campo 7
(defrule malestar
	?f <- (paciente (estado ?edo) (malestar 1) (malestar_checked 0))
	=>
	(printout t "7- run malestar " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.075))
	(modify ?f (estado ?nuevo_edo) (malestar_checked 1))
)

; ---------------------------------------------------------------------
; anorexia campo 8
(defrule anorexia
	?f <- (paciente (estado ?edo) (anorexia 1) (anorexia_checked 0))
	=>
	(printout t "8- run anorexia " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.04))
	(modify ?f (estado ?nuevo_edo) (anorexia_checked 1))
)

; ---------------------------------------------------------------------
; higado_grande campo 9
(defrule higado_grande
	?f <- (paciente (estado ?edo) (higado_grande 2) (higado_grande_checked 0))
	=>
	(printout t "9- run higado_grande " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.04))
	(modify ?f (estado ?nuevo_edo) (higado_grande_checked 1))
)

; ---------------------------------------------------------------------
; campo 10 higado_firme
(defrule higado_firme
	?f <- (paciente (estado ?edo) (higado_firme 1) (higado_firme_checked 0))
	=>
	(printout t "10- higado_firme con valor hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.05))
	(modify ?f (estado ?nuevo_edo) (higado_firme_checked 1))
)

; ---------------------------------------------------------------------
; campo 11 bazo_palpable
(defrule bazo_palpable
	?f <- (paciente (estado ?edo) (bazo_palpable 1) (bazo_palpable_checked 0))
	=>
	(printout t "11- bazo_palpable con valor hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.1))
	(modify ?f (estado ?nuevo_edo) (bazo_palpable_checked 1))
)

; ---------------------------------------------------------------------
; campo 12 aranias
(defrule aranias
	?f <- (paciente (estado ?edo) (aranias 1) (aranias_checked 0))
	=>
	(printout t "12- aranias con valor hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.106))
	(modify ?f (estado ?nuevo_edo) (aranias_checked 1))
)

; ---------------------------------------------------------------------
; campo 13 ascitis
(defrule ascitis
	?f <- (paciente (estado ?edo) (ascitis 1) (ascitis_checked 0))
	=>
	(printout t "13- ascitis con valor hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.15))
	(modify ?f (estado ?nuevo_edo) (ascitis_checked 1))
)

; ---------------------------------------------------------------------
; campo 14 varices
(defrule varices
	?f <- (paciente (estado ?edo) (varices 1) (varices_checked 0))
	=>
	(printout t "14- varices con valor hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.1))
	(modify ?f (estado ?nuevo_edo) (varices_checked 1))
)

; ---------------------------------------------------------------------
; campo 20 histologia
(defrule histologia
	?f <- (paciente (estado ?edo) (histologia 1) (histologia_checked 0))
	=>
	(printout t "20- histologia con valor hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.08))
	(modify ?f (estado ?nuevo_edo) (histologia_checked 1))
)

; ----------------------------------------------------------------------
; ----------------------------------------------------------------------
; Programación de las variables continuas
; ----------------------------------------------------------------------
; ----------------------------------------------------------------------

; edad campo 2
(defrule edad
	?f <- (paciente (estado ?edo) (edad ?edad) (edad_checked 0))
	(test (> ?edad 52))
	=>
	(printout t "2- edad con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.05))
	(modify ?f (estado ?nuevo_edo) (edad_checked 1))
)
; ---------------------------------------------------------------------
; bilirrubina campo 15
(defrule bilirrubina
	?f <- (paciente (estado ?edo) (bilirrubina ?bilirrubina & ~x) (bilirrubina_checked 0))
	(test (> ?bilirrubina 1.87))
	=>
	(printout t "15- bilirrubina con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.058))
	(modify ?f (estado ?nuevo_edo) (bilirrubina_checked 1))
)

; ---------------------------------------------------------------------
; fosfato_alk campo 16
(defrule fosfato_alk
	?f <- (paciente (estado ?edo) (fosfato_alk ?fosfato_alk & ~x) (fosfato_alk_checked 0))
	(test (> ?fosfato_alk 151.322))
	=>
	(printout t "16- fosfato_alk con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.014))
	(modify ?f (estado ?nuevo_edo) (fosfato_alk_checked 1))
)

; ---------------------------------------------------------------------
; sgot campo 17
(defrule sgot
	?f <- (paciente (estado ?edo) (sgot ?fgot & ~x) (sgot_checked 0))
	(test (> ?fgot 168.6))
	=>
	(printout t "17- sgot con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.0293))
	(modify ?f (estado ?nuevo_edo) (sgot_checked 1))
)

; ---------------------------------------------------------------------
; albumina campo 18
(defrule albumina
	?f <- (paciente (estado ?edo) (albumina ?albumina & ~x) (albumina_checked 0))
	(test (< ?albumina 3.4242))
	=>
	(printout t "18- albumina con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.14))
	(modify ?f (estado ?nuevo_edo) (albumina_checked 1))
)
(defrule albumina_x
	?f <- (paciente (estado ?edo) (albumina x) (albumina_checked 0))
	=>
	(printout t "18- albumina con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.14))
	(modify ?f (estado ?nuevo_edo) (albumina_checked 1))
)

; ---------------------------------------------------------------------
; protime campo 19
(defrule protime
	?f <- (paciente (estado ?edo) (protime ?protime & ~x) (protime_checked 0))
	(test (< ?protime 44.8172))
	=>
	(printout t "19- protime con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.04))
	(modify ?f (estado ?nuevo_edo) (protime_checked 1))
)

(defrule protime_x
	?f <- (paciente (estado ?edo) (protime x) (protime_checked 0))
	=>
	(printout t "19- protime con hecho " ?f crlf)
	(bind ?nuevo_edo (- ?edo 0.04))
	(modify ?f (estado ?nuevo_edo) (protime_checked 1))
)

; ---------------------------------------------------------------------
; sexo campo 3, en caso de ser mujer
(defrule sexo_2
	?f <- (paciente (estado ?edo) (sexo 2) (sexo_2_checked 0))
	(test (< ?edo 1.5))
	=>
	(printout t "3- run sexo_2 " ?f crlf)
	(bind ?nuevo_edo (+ ?edo 0.6))
	(modify ?f (estado ?nuevo_edo) (sexo_2_checked 1))
)


; ----------------------------------------------------------------------
; ----------------------------------------------------------------------
; Muestra los resultados del menu
; ----------------------------------------------------------------------
; ----------------------------------------------------------------------
(defrule menu_resultados
	(menu (accion resultados))
	(paciente (id ?id) (estado ?edo))
	=>
	(printout t "El paciente con ID " ?id " tiene como estado: " ?edo crlf)
)
