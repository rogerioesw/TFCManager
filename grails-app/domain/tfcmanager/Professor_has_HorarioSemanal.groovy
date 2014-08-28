package tfcmanager

class Professor_has_HorarioSemanal {
	
	String semestre
	
	static belongsTo = [professor:Professor, horario:HorarioSemanal]

    static constraints = {
		semestre(blank:false, minSize:6, maxSize:6, matches:"^([1-9][0-9][0-9][0-9])/([1]|[2])")
    }
}
