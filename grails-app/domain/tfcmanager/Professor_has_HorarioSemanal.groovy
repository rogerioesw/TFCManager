package tfcmanager

class Professor_has_HorarioSemanal {
	
	String semestre
	
	static belongsTo = [Professor, HorarioSemanal]

    static constraints = {
    }
}
