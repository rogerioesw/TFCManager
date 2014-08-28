package tfcmanager

class Professor_has_Convocacao {
	
	static belongsTo = [professor:Professor, convocacao:Convocacao]

    static constraints = {
    }
}
