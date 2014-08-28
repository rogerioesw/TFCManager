package tfcmanager

class Aluno_has_HorarioSemanal {
	
	String semestre
	
	static belongsTo = [aluno:Aluno, horario:HorarioSemanal]
	

    static constraints = {
		semestre(blank:false, minSize:6, maxSize:6, matches:"^([1-9][0-9][0-9][0-9])/([1]|[2])")
    }
}
