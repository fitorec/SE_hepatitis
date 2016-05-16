;
;	(load "/home/fitorec/Documentos/utm/PROYECTO/src/reglas.clp")


; campo 3 Sexo
(defrule sexo_1
	?s <- (paciente (estado ?edo) (sexo 1) (sexo_1_checked 0))
	=>
	(printout t "3- run sexo_1 " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.017))
	(modify ?s (estado ?nuevo_edo) (sexo_1_checked 1))
)
; ---------------------------------------------------------------------
; esteroides campo 4
(defrule esteroides
	?s <- (paciente (estado ?edo) (esteroides 1) (esteroides_checked 0))
	=>
	(printout t "4- run esteroides " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.05))
	(modify ?s (estado ?nuevo_edo) (esteroides_checked 1))
)

; ---------------------------------------------------------------------
; antivirales campo 5
(defrule antivirales
	?s <- (paciente (estado ?edo) (antivirales 2) (antivirales_checked 0))
	=>
	(printout t "5- run antivirales " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.060))
	(modify ?s (estado ?nuevo_edo) (antivirales_checked 1))
)

; ---------------------------------------------------------------------
; fatiga campo 6
(defrule fatiga
	?s <- (paciente (estado ?edo) (fatiga 1) (fatiga_checked 0))
	=>
	(printout t "6- run fatiga " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.001))
	(modify ?s (estado ?nuevo_edo) (fatiga_checked 1))
)

; ---------------------------------------------------------------------
; malestar campo 7
(defrule malestar
	?s <- (paciente (estado ?edo) (malestar 1) (malestar_checked 0))
	=>
	(printout t "7- run malestar " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.075))
	(modify ?s (estado ?nuevo_edo) (malestar_checked 1))
)

; ---------------------------------------------------------------------
; anorexia campo 8
(defrule anorexia
	?s <- (paciente (estado ?edo) (anorexia 1) (anorexia_checked 0))
	=>
	(printout t "8- run anorexia " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.04))
	(modify ?s (estado ?nuevo_edo) (anorexia_checked 1))
)

; ---------------------------------------------------------------------
; higado_grande campo 9
(defrule higado_grande
	?s <- (paciente (estado ?edo) (higado_grande 2) (higado_grande_checked 0))
	=>
	(printout t "9- run higado_grande " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.04))
	(modify ?s (estado ?nuevo_edo) (higado_grande_checked 1))
)

; ---------------------------------------------------------------------
; campo 10 higado_firme
(defrule higado_firme
	?s <- (paciente (estado ?edo) (higado_firme 1) (higado_firme_checked 0))
	=>
	(printout t "10- higado_firme con valor hecho " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.05))
	(modify ?s (estado ?nuevo_edo) (higado_firme_checked 1))
)

; ---------------------------------------------------------------------
; campo 11 bazo_palpable
(defrule bazo_palpable
	?s <- (paciente (estado ?edo) (bazo_palpable 1) (bazo_palpable_checked 0))
	=>
	(printout t "11- bazo_palpable con valor hecho " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.1))
	(modify ?s (estado ?nuevo_edo) (bazo_palpable_checked 1))
)

; ---------------------------------------------------------------------
; campo 12 aranias
(defrule aranias
	?s <- (paciente (estado ?edo) (aranias 1) (aranias_checked 0))
	=>
	(printout t "12- aranias con valor hecho " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.106))
	(modify ?s (estado ?nuevo_edo) (aranias_checked 1))
)

; ---------------------------------------------------------------------
; campo 13 ascitis
(defrule ascitis
	?s <- (paciente (estado ?edo) (ascitis 1) (ascitis_checked 0))
	=>
	(printout t "13- ascitis con valor hecho " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.15))
	(modify ?s (estado ?nuevo_edo) (ascitis_checked 1))
)

; ---------------------------------------------------------------------
; campo 14 varices
(defrule varices
	?s <- (paciente (estado ?edo) (varices 1) (varices_checked 0))
	=>
	(printout t "14- varices con valor hecho " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.1))
	(modify ?s (estado ?nuevo_edo) (varices_checked 1))
)

; ---------------------------------------------------------------------
; campo 20 histologia
(defrule histologia
	?s <- (paciente (estado ?edo) (histologia 1) (histologia_checked 0))
	=>
	(printout t "20- histologia con valor hecho " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.08))
	(modify ?s (estado ?nuevo_edo) (histologia_checked 1))
)

; ----------------------------------------------------------------------
; ----------------------------------------------------------------------
; Programación de las variables continuas
; ----------------------------------------------------------------------
; ----------------------------------------------------------------------
(defrule histologia
	?s <- (paciente (estado ?edo) (histologia 1) (histologia_checked 0))
	=>
	(printout t "20- histologia con valor hecho " ?s crlf)
	(bind ?nuevo_edo (- ?edo 0.08))
	(modify ?s (estado ?nuevo_edo) (histologia_checked 1))
)
(test (>= (abs (- ?y ?x)) 3))
