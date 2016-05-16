;	use:
;	(load "/home/fitorec/Documentos/utm/PROYECTO/src/paciente.clp")
;

(deftemplate paciente "Simula los datos de un paciente"
	(slot id (default 0))
	(slot estado (default 2))
	(slot edad)
	(slot sexo)
	(slot esteroides)
	(slot antivirales)
	(slot fatiga)
	(slot malestar)
	(slot anorexia)
	(slot higado_grande)
	(slot higado_firme)
	(slot bazo_palpable)
	(slot aranias)
	(slot ascitis)
	(slot varices)
	(slot bilirrubina)
	(slot fosfato_alk)
	(slot sgot)
	(slot albumina)
	(slot protime)
	(slot histologia)
	; Campos utilizados para revisar si un campo fue revisado (impidiendo ciclos infinitos)
	(slot edad_checked (type INTEGER) (range 0 1) (default 0))
	(slot sexo_1_checked (type INTEGER) (range 0 1) (default 0))
	(slot sexo_2_checked (type INTEGER) (range 0 1) (default 0))
	(slot esteroides_checked (type INTEGER) (range 0 1) (default 0))
	(slot antivirales_checked (type INTEGER) (range 0 1) (default 0))
	(slot fatiga_checked (type INTEGER) (range 0 1) (default 0))
	(slot malestar_checked (type INTEGER) (range 0 1) (default 0))
	(slot anorexia_checked (type INTEGER) (range 0 1) (default 0))
	(slot higado_grande_checked (type INTEGER) (range 0 1) (default 0))
	(slot higado_firme_checked (type INTEGER) (range 0 1) (default 0))
	(slot bazo_palpable_checked (type INTEGER) (range 0 1) (default 0))
	(slot aranias_checked (type INTEGER) (range 0 1) (default 0))
	(slot ascitis_checked (type INTEGER) (range 0 1) (default 0))
	(slot varices_checked (type INTEGER) (range 0 1) (default 0))
	(slot bilirrubina_checked (type INTEGER) (range 0 1) (default 0))
	(slot fosfato_alk_checked (type INTEGER) (range 0 1) (default 0))
	(slot sgot_checked (type INTEGER) (range 0 1) (default 0))
	(slot albumina_checked (type INTEGER) (range 0 1) (default 0))
	(slot protime_checked (type INTEGER) (range 0 1) (default 0))
	(slot histologia_checked (type INTEGER) (range 0 1) (default 0))
)


(
	deftemplate menu "El estado de un menu"
	(slot accion)
)
