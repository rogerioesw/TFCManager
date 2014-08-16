package tfcmanager

class Professor_has_HorarioSemanal {
	
	String semestre
	
	static belongsTo = [professor:Professor, horario:HorarioSemanal]

    static constraints = {
    }
}
